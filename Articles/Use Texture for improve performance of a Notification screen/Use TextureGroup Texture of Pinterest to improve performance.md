# Motivation

Pinterest owned the AsyncDisplayKit then rename it to Texture. I want to figure out whether it is enough quality and how to improve our massive Notification TableView & CollectionView by using it.

Github: https://github.com/TextureGroup/Texture
Website: http://texturegroup.org/docs/getting-started.html


# Overview

## Question
- Can we use AutoLayout or we have an alternative solution for it?
  - LayoutSpec - Inspired by FlexBox CSS?
  - Official: Does not support AutoLayout or InterfaceBuilder.
  - Instead, it is using ASLayoutSpec for multithread and off the main thread.
  - It supports Stack and Intrinsic size.

## Interesting

- Node can render in background.
- NodeContainer can handle intelligent preloading.
- Developer can tweak RangeTunningParameters.
- Intelligent preloading is similar with a feature from Apple, but I think it is better, because it can be tweak screenful.
- Shouldn't use .cornerRadius because it taxes performance. http://texturegroup.org/docs/corner-rounding.html#corner-rounding-strategy-flowchart . But when I check with JIRA, removing .cornerRadius does not significantly improve performance.
- UIImage.imageNamed is not thread safe. Use UIImage.imageWithContentOfFile instead.

## Node

Node is an abstraction of View. But the different is it is thread safe. It can instantiate and config entire hierarchy in background or parallel.

Recommend from Texture team that we should use Node Container as a Middleware with UIKit and Node. Instead of add Node directly into view hierarchy.

## Why do we have to use Node Container

Because it manages intelligent preloading.
