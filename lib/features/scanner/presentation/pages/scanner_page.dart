import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_ordering/core/cubit/qr_ordering_status.dart';
import 'package:qr_ordering/core/dependency_injection/dependency_injection.dart';
import 'package:qr_ordering/features/scanner/domain/repositories/scanner_navigation_repository.dart';
import 'package:qr_ordering/features/scanner/presentation/cubit/scanner_cubit.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  final MobileScannerController _controller = MobileScannerController(
    detectionSpeed: DetectionSpeed.noDuplicates,
  );
  bool _hasNavigated = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ScannerCubit>(
      create: (_) => di<ScannerCubit>(),
      child: BlocConsumer<ScannerCubit, ScannerState>(
        listener: (context, state) {
          if (state.scanStatus == QrOrderingStatus.submissionSuccess &&
              state.tableId != null) {
            _hasNavigated = true;
            print('pesan 1');
            di<ScannerNavigationRepository>().goToMenuPage(
              context,
              tableId: state.tableId!,
            );
          }

          if (state.scanStatus == QrOrderingStatus.submissionFailure ||
              state.scanStatus == QrOrderingStatus.invalid) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  state.failure?.message ??
                      'An error occurred. Please try again.',
                ),
              ),
            );

            final cubit = context.read<ScannerCubit>();
            Future.delayed(const Duration(seconds: 2), () {
              if (mounted) {
                _hasNavigated = false;
                cubit.reset();
              }
            });
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.black,
            body: Stack(
              children: [
                MobileScanner(
                  controller: _controller,
                  onDetect: (capture) {
                    final barcode = capture.barcodes.firstOrNull;
                    final rawValue = barcode?.rawValue;
                    if (rawValue != null && !_hasNavigated) {
                      _hasNavigated = true;
                      context.read<ScannerCubit>().onQrScanned(rawValue);
                    }
                  },
                ),
                _ScannerOverlay(
                  isLoading:
                      state.scanStatus == QrOrderingStatus.submissionInProgress,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _ScannerOverlay extends StatelessWidget {
  final bool isLoading;

  const _ScannerOverlay({required this.isLoading});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final scanAreaSize = size.width < 600 ? size.width * 0.7 : 320.0;

    return Stack(
      children: [
        ColorFiltered(
          colorFilter: ColorFilter.mode(
            Colors.black.withValues(alpha: 0.6),
            BlendMode.srcOut,
          ),
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                  backgroundBlendMode: BlendMode.dstOut,
                ),
              ),
              Center(
                child: Container(
                  width: scanAreaSize,
                  height: scanAreaSize,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: scanAreaSize,
                height: scanAreaSize,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              const SizedBox(height: 32),
              if (isLoading)
                const CircularProgressIndicator()
              else
                Text(
                  'Point your camera at the table QR code',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                  semanticsLabel: 'Scanner instruction',
                ),
            ],
          ),
        ),
        Positioned(
          top: MediaQuery.paddingOf(context).top + 16,
          left: 16,
          child: Text(
            'Scan Table QR',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
