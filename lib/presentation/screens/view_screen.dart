import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:openscan/core/theme/appTheme.dart';
import 'package:openscan/logic/cubit/directory_cubit.dart';
import 'package:openscan/presentation/Widgets/FAB.dart';
import 'package:openscan/presentation/Widgets/view/custom_bottomsheet.dart';
import 'package:openscan/presentation/Widgets/view/image_card.dart';
import 'package:openscan/presentation/Widgets/view/popup_menu_button.dart';
import 'package:openscan/presentation/extensions.dart';
import 'package:openscan/presentation/screens/preview_screen.dart';
import 'package:reorderables/reorderables.dart';

class ViewScreen extends StatefulWidget {
  static String route = "ViewDocument";

  static bool enableSelect = false;
  static bool enableReorder = false;
  // static List<bool> selectedImageIndex = [];

  // final DirectoryOS directoryOS;
  final bool quickScan;
  final bool fromGallery;

  ViewScreen({
    this.quickScan = false,
    // this.directoryOS,
    this.fromGallery = false,
  });

  @override
  _ViewScreenState createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  bool enableSelectionIcons = false;

  List<String> imageFilesPath = [];

  // final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  // TransformationController _controller = TransformationController();
  // DatabaseHelper database = DatabaseHelper();
  // List<Widget> imageCards = [];
  // FileOperations fileOperations = FileOperations();
  // List<Map<String, dynamic>> directoryData;
  // List<ImageOS> directoryImages = [];
  // List<ImageOS> initDirectoryImages = [];
  // bool resetReorder = false;
  // ImageOS displayImage;
  // bool showImage = false;

  // void getDirectoryData({
  //   bool updateFirstImage = false,
  //   bool updateIndex = false,
  // }) async {
  // directoryImages = [];
  // initDirectoryImages = [];
  // imageFilesPath = [];
  // ViewDocument.selectedImageIndex = [];
  // int index = 1;

  // BlocListener<DirectoryCubit, DirectoryState>(
  //     listener: (context, state) async {
  //   print('hello');
  //   directoryData = await database.getDirectoryData(state.dirName);
  //   // print('Directory table[${widget.directoryOS.dirName}] => $directoryData');
  // });
  // directoryData = await database.getDirectoryData(widget.directoryOS.dirName);
  // print('Directory table[${widget.directoryOS.dirName}] => $directoryData');
  // for (var image in directoryData) {
  // Updating first image path after delete
  // if (updateFirstImage) {
  //   database.updateFirstImagePath(
  //       imagePath: image['img_path'], dirPath: widget.directoryOS.dirPath);
  //   updateFirstImage = false;
  // }
  // var i = image['idx'];
  // Updating index of images after delete
  // if (updateIndex) {
  //   i = index;
  //   database.updateImageIndex(
  //     image: ImageOS(
  //       idx: i,
  //       imgPath: image['img_path'],
  //     ),
  //     tableName: widget.directoryOS.dirName,
  //   );
  // }
  // ImageOS tempImageOS = ImageOS(
  //   idx: i,
  //   imgPath: image['img_path'],
  // );
  // directoryImages.add(
  //   tempImageOS,
  // );
  // initDirectoryImages.add(
  //   tempImageOS,
  // );
  // imageCards.add(
  //   ImageCard(
  //     imageOS: tempImageOS,
  //     directoryOS: widget.directoryOS,
  //     fileEditCallback: () {
  //       fileEditCallback(imageOS: tempImageOS);
  //     },
  //     selectCallback: () {
  //       selectionCallback(imageOS: tempImageOS);
  //     },
  //     imageViewerCallback: () {
  //       imageViewerCallback(imageOS: tempImageOS);
  //     },
  //   ),
  // );
  // imageFilesPath.add(image['img_path']);
  // ViewDocument.selectedImageIndex.add(false);
  // index += 1;
  // }
  // }

  // selectionCallback({ImageOS imageOS}) {
  //   if (ViewDocument.selectedImageIndex.contains(true)) {
  //     setState(() {
  //       enableSelectionIcons = true;
  //     });
  //   } else {
  //     setState(() {
  //       enableSelectionIcons = false;
  //     });
  //   }
  // }
  // void fileEditCallback({ImageOS imageOS}) {
  //   bool isFirstImage = false;
  //   if (imageOS.imgPath == widget.directoryOS.firstImgPath) {
  //     isFirstImage = true;
  //   }
  //   // getDirectoryData(
  //   //   updateFirstImage: isFirstImage,
  //   //   updateIndex: true,
  //   // );
  // }
  // imageViewerCallback({ImageOS imageOS}) {
  //   setState(() {
  //     displayImage = imageOS;
  //     showImage = true;
  //   });
  // }
  // removeSelection() {
  //   setState(() {
  //     ViewDocument.selectedImageIndex =
  //         ViewDocument.selectedImageIndex.map((e) => false).toList();
  //     ViewDocument.enableSelect = false;
  //   });
  // }

  void handleClick(context, {String value}) {
    print(value);
    switch (value) {
      case 'Delete':
        // TODO: Delete Mutiple
        break;
      case 'Export':
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return CustomBottomSheet();
          },
        );
        break;
    }
  }

  // Future<void> createDirectoryPath() async {
  //   Directory appDir = await getExternalStorageDirectory();
  //   dirName = 'OpenScan ${DateTime.now()}';
  //   dirPath = "${appDir.path}/$dirName";
  //   // widget.directoryOS.dirPath = dirPath;
  //   // widget.directoryOS.dirName = dirName;
  //   // print('New Directory => ${widget.directoryOS.dirName}');
  // }

  // @override
  // void initState() {
  //   super.initState();
  // if (widget.directoryOS.dirPath != null) {
  //   dirPath = widget.directoryOS.dirPath;
  //   dirName = widget.directoryOS.newName;
  //   // BlocProvider.of<DirectoryCubit>(context).getImageData();
  // } else {
  //   // createDirectoryPath();
  //   if (widget.fromGallery) {
  //     // BlocProvider.of<DirectoryCubit>(context).createImage(
  //     //   context,
  //     //   quickScan: false,
  //     //   fromGallery: true,
  //     // );
  //   } else {
  //     BlocProvider.of<DirectoryCubit>(context).createImage(
  //       context,
  //       quickScan: widget.quickScan,
  //     );
  //   }
  // }
  // }

  // TODO: Bugs
  // Create Image - crop not reflecting
  // Delete image not reflecting
  // Bloc not provided to bottomSheet

  // TODO: Select images

  // TODO: Delete Multiple Images

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: WillPopScope(
        onWillPop: () {
          if (ViewScreen.enableSelect || ViewScreen.enableReorder) {
            // setState(() {
            ViewScreen.enableSelect = false;
            // removeSelection();
            ViewScreen.enableReorder = false;
            // showImage = false;
            // });
          } else {
            Navigator.pop(context);
          }
          return;
        },
        child: Stack(
          children: [
            Scaffold(
              backgroundColor: AppTheme.backgroundColor,
              // key: scaffoldKey,
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Theme.of(context).primaryColor,
                leading: (ViewScreen.enableSelect || ViewScreen.enableReorder)
                    ? IconButton(
                        icon: Icon(
                          Icons.close_rounded,
                          size: 30,
                        ),
                        onPressed: (ViewScreen.enableSelect)
                            ? () {
                                // removeSelection();
                              }
                            : () {
                                // TODO: Revert Reorder

                                // setState(() {
                                //   // Reverting reorder
                                //   directoryImages = [];
                                //   for (var image in initDirectoryImages) {
                                //     directoryImages.add(image);
                                //   }
                                //   enableReorder = false;
                                // });
                              },
                      )
                    : IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.pop(context, true);
                        },
                      ),
                title: BlocConsumer<DirectoryCubit, DirectoryState>(
                  listener: (context, state) {
                    print('DirName updated: ${state.dirName}');
                  },
                  buildWhen: (previousState, state) {
                    if (previousState.dirName != state.dirName) return true;
                    return false;
                  },
                  builder: (context, state) {
                    return Text(
                      state.dirName ?? '',
                      style: TextStyle().appBarStyle,
                      overflow: TextOverflow.ellipsis,
                    );
                  },
                ),
                actions: [
                  (ViewScreen.enableSelect)
                      ? IconButton(
                          icon: Icon(
                            Icons.select_all_rounded,
                            color: (enableSelectionIcons)
                                ? Colors.white
                                : Colors.grey,
                          ),
                          onPressed: (enableSelectionIcons)
                              ? () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return CustomBottomSheet();
                                    },
                                  );
                                }
                              : () {},
                        )
                      : IconButton(
                          icon: Icon(Icons.picture_as_pdf_rounded),
                          onPressed: () async {
                            // TODO: Preview PDF
                            // await fileOperations.saveToAppDirectory(
                            //   context: context,
                            //   fileName: fileName,
                            //   images: state.images,
                            // );
                            // Directory storedDirectory =
                            //     await getApplicationDocumentsDirectory();
                            // final result = await OpenFile.open(
                            //     '${storedDirectory.path}/.pdf');
                            // setState(() {
                            // String _openResult =
                            //     "type=${result.type}  message=${result.message}";
                            // print(_openResult);
                            // });
                          },
                        ),
                  CustomPopupMenuButton(
                    onSelected: (value) => handleClick(
                      context,
                      value: value,
                    ),
                    itemsMap: {
                      'Export': Icons.share_rounded,
                      'Delete': Icons.delete_rounded,
                    },
                  ),
                ],
              ),
              body: SingleChildScrollView(
                padding: EdgeInsets.all(10),
                child: BlocConsumer<DirectoryCubit, DirectoryState>(
                  listener: (context, state) {
                    print('ImageCount => ${state.imageCount}');
                    // if (state.images.every((element) => !element.selected))
                    //   ViewDocument.enableSelect = true;
                    // else
                    //   ViewDocument.enableSelect = false;
                  },
                  builder: (context, state) {
                    if (state.images != null) {
                      return ReorderableWrap(
                        needsLongPressDraggable: false,
                        spacing: 10,
                        runSpacing: 10,
                        minMainAxisCount: 2,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: state.images.map((image) {
                          return ImageCard(
                            image: image,
                            onLongPressed: () {
                              //TODO: Select image
                            },
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) =>
                                      BlocProvider<DirectoryCubit>.value(
                                    value: BlocProvider.of<DirectoryCubit>(
                                        context),
                                    child: PreviewScreen(
                                      initialIndex: image.idx - 1,
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                        onReorder: (int oldIndex, int newIndex) {
                          BlocProvider.of<DirectoryCubit>(context)
                              .onReorderImages(oldIndex, newIndex);
                        },
                        onNoReorder: (int index) {
                          debugPrint(
                              '${DateTime.now().toString().substring(5, 22)} reorder cancelled. index:');
                        },
                        onReorderStarted: (int index) {
                          debugPrint(
                              '${DateTime.now().toString().substring(5, 22)} reorder started: index:');
                        },
                      );
                    }
                    // TODO: Loading
                    return Container();
                  },
                ),
              ),
              floatingActionButton: FAB(
                normalScanOnPressed: () {
                  BlocProvider.of<DirectoryCubit>(context).createImage(
                    context,
                    quickScan: false,
                  );
                },
                quickScanOnPressed: () {
                  BlocProvider.of<DirectoryCubit>(context).createImage(
                    context,
                    quickScan: true,
                  );
                },
                galleryOnPressed: () {
                  BlocProvider.of<DirectoryCubit>(context).createImage(
                    context,
                    quickScan: false,
                    fromGallery: true,
                  );
                },
              ),
            ),
            // Image Preview
            // (showImage)
            //     ? GestureDetector(
            //         onTap: () {
            //           // setState(() {
            //           showImage = false;
            //           // });
            //         },
            //         child: Container(
            //           width: size.width,
            //           height: size.height,
            //           padding: EdgeInsets.all(20),
            //           color:
            //               Theme.of(context).primaryColor.withOpacity(0.8),
            //           child: GestureDetector(
            //             onDoubleTapDown: (details) {
            //               _doubleTapDetails = details;
            //             },
            //             onDoubleTap: () {
            //               if (_controller.value != Matrix4.identity()) {
            //                 _controller.value = Matrix4.identity();
            //               } else {
            //                 final position =
            //                     _doubleTapDetails.localPosition;
            //                 _controller.value = Matrix4.identity()
            //                   ..translate(-position.dx, -position.dy)
            //                   ..scale(2.0);
            //               }
            //             },
            //             child: InteractiveViewer(
            //               transformationController: _controller,
            //               maxScale: 10,
            //               child: GestureDetector(
            //                 child: Image.file(
            //                   File(displayImage.imgPath),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //       )
            //     : Container(),
          ],
        ),
      ),
    );
  }
}
