library reveal_card;

import 'package:flutter/material.dart';

class RevealCard extends StatefulWidget {
  const RevealCard({
    Key? key,
    required this.title,
    this.revealIcon,
    required this.content,
    this.backgroundImage,
    this.opacity,
    this.backgroundColor,
    this.revealTitle,
    this.revealCloseIcon,
    this.revealContent,
    this.revealBackgroundColor,
    this.revealBackgroundImage,
    this.revealOpacity,
    this.revealDuration = 200,
    this.actionButton,
    this.width = 300,
    this.height = 300,
  }) : super(key: key);

  // Title of the Front Card
  final Text? title;

  // Icon to Reveal the Back Card
  final Icon? revealIcon;

  // Content of the Front Card
  final List<Widget>? content;

  // Background Image of the Front Card
  final ImageProvider? backgroundImage;

  // Opacity of the Front Card
  final double? opacity;

  // Background Color of the Front Card
  final Color? backgroundColor;

  // Title of the Back Card
  final Text? revealTitle;

  // Icon to close the Back Card
  final Icon? revealCloseIcon;

  // Content of the Back Card
  final List<Widget>? revealContent;

  // Background Color of the Back Card
  final Color? revealBackgroundColor;

  // Background Image of the Back Card
  final ImageProvider? revealBackgroundImage;

  // Opacity of the Back Card
  final double? revealOpacity;

  // Duration of the Reveal Animation
  final int? revealDuration;

  // Action Button of the Front Card
  final FloatingActionButton? actionButton;

  // Width of the Card
  final double? width;

  // Height of the Card
  final double? height;

  @override
  State<RevealCard> createState() => _RevealCardState();
}

class _RevealCardState extends State<RevealCard> with SingleTickerProviderStateMixin {
  // Width of part to be revealed
  double revealWidth = 0;
  // Height of part to be revealed
  double revealHeight = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 10.0,
        borderRadius: BorderRadius.circular(10.0),
        child: SizedBox(
          height: widget.height,
          width: widget.width,
          child: Stack(
            children: [
              widget.backgroundImage == null
                  ? Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: widget.backgroundColor ?? Colors.white,
                      ),
                    )
                  : Container(
                      decoration: widget.backgroundImage == null
                          ? BoxDecoration(borderRadius: BorderRadius.circular(10), color: widget.backgroundColor ?? Colors.white)
                          : BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: widget.backgroundImage!,
                                fit: BoxFit.fill,
                              ),
                            ),
                      child: Opacity(
                        opacity: widget.opacity ?? 0.5,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
              Positioned(
                top: 20,
                left: 20,
                right: 20,
                bottom: 0,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: widget.title ??
                                const Text(
                                  '',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    revealHeight = revealHeight == 0 ? widget.height! : 0;
                                  });
                                },
                                icon: widget.revealIcon ??
                                    const Icon(
                                      Icons.more_vert,
                                      color: Colors.black,
                                    ),
                              ),
                              SizedBox(
                                width: widget.actionButton == null ? 0 : 5,
                              ),
                              widget.actionButton ?? Container()
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: widget.height! - 125,
                      child: SingleChildScrollView(
                        child: Column(
                          children: widget.content ?? [],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: AnimatedContainer(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: widget.revealBackgroundColor ?? Colors.white,
                  ),
                  height: revealHeight,
                  width: widget.width,
                  duration: Duration(milliseconds: widget.revealDuration!),
                  child: Stack(
                    children: [
                      widget.revealBackgroundImage == null
                          ? Container()
                          : Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                image: widget.revealBackgroundImage == null
                                    ? null
                                    : DecorationImage(
                                        fit: BoxFit.fill,
                                        image: widget.revealBackgroundImage!,
                                      ),
                              ),
                              child: Opacity(
                                  opacity: widget.revealOpacity ?? 0.5,
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.black),
                                  )),
                            ),
                      Column(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: widget.revealTitle ??
                                              const Text(
                                                '',
                                                style: TextStyle(fontSize: 24),
                                              ),
                                        ),
                                        IconButton(
                                          padding: EdgeInsets.zero,
                                          onPressed: () {
                                            setState(() {
                                              revealHeight = 0;
                                            });
                                          },
                                          icon: widget.revealCloseIcon ??
                                              const Icon(
                                                Icons.close,
                                              ),
                                          iconSize: 26,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    height: 10,
                                    color: Colors.grey,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                                    child: Column(
                                      children: widget.revealContent ?? [],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
