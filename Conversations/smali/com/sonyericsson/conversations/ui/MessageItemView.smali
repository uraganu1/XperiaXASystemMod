.class public abstract Lcom/sonyericsson/conversations/ui/MessageItemView;
.super Landroid/widget/LinearLayout;
.source "MessageItemView.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/OnViewProducedListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sonyericsson/conversations/ui/MessageContentStackable;
.implements Lcom/sonyericsson/conversations/ui/MessageContentClickable;
.implements Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;
.implements Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnActionBarShownListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;,
        Lcom/sonyericsson/conversations/ui/MessageItemView$1;
    }
.end annotation


# instance fields
.field protected mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private mHighlightPattern:Ljava/util/regex/Pattern;

.field private mIsStacked:Z

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mMessage:Lcom/sonyericsson/conversations/model/Message;

.field private mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mWasStacked:Z


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/MessageItemView;)Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/MessageItemView;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/google/android/mms/pdu/PduPart;)V
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "caption"    # Ljava/lang/String;
    .param p3, "bodyPart"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/MessageItemView;->createAndAddAttachmentRow(Landroid/view/ViewGroup;Ljava/lang/String;Lcom/google/android/mms/pdu/PduPart;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageItemView$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageItemView$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageItemView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageItemView$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageItemView$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageItemView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 132
    return-void
.end method

.method private addImageContent(Lcom/android/mms/model/SlideModel;Landroid/view/View;Z)V
    .locals 12
    .param p1, "slide"    # Lcom/android/mms/model/SlideModel;
    .param p2, "slideView"    # Landroid/view/View;
    .param p3, "isSent"    # Z

    .prologue
    .line 205
    if-nez p1, :cond_0

    .line 206
    return-void

    .line 209
    :cond_0
    const v10, 0x7f0d00c9

    .line 208
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 210
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const v10, 0x7f0d00ca

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 212
    .local v4, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 213
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v1

    .line 214
    .local v1, "image":Lcom/android/mms/model/ImageModel;
    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 217
    .local v3, "imageUri":Landroid/net/Uri;
    const v10, 0x7f0d00c5

    invoke-virtual {v0, v10, v3}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 218
    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, "mimeType":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->getContentType()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0d00c7

    invoke-virtual {v0, v11, v10}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 220
    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->isSticker()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 222
    const v11, 0x7f0c0090

    .line 221
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 223
    .local v2, "imageDim":I
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 224
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    .end local v2    # "imageDim":I
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->setOnActionListeners(Landroid/view/View;)V

    .line 227
    invoke-static {v3, v4, v6}, Lcom/sonyericsson/conversations/util/ImageHandler;->loadImageThumbnail(Landroid/net/Uri;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 247
    .end local v1    # "image":Lcom/android/mms/model/ImageModel;
    .end local v3    # "imageUri":Landroid/net/Uri;
    .end local v6    # "mimeType":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/sonyericsson/conversations/ui/MessageItemView;->setViewMargin(Landroid/view/View;Z)V

    .line 204
    return-void

    .line 228
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 229
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v7

    .line 230
    .local v7, "video":Lcom/android/mms/model/VideoModel;
    invoke-virtual {v7}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v9

    .line 232
    .local v9, "videoUri":Landroid/net/Uri;
    const v10, 0x7f0d00cb

    .line 231
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 233
    .local v8, "videoIndicatorView":Landroid/widget/ImageView;
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    invoke-static {v9, v4}, Lcom/sonyericsson/conversations/util/ImageHandler;->loadVideoThumbnail(Landroid/net/Uri;Landroid/widget/ImageView;)V

    .line 238
    const v10, 0x7f0d00c5

    invoke-virtual {v0, v10, v9}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 239
    invoke-virtual {v7}, Lcom/android/mms/model/VideoModel;->getContentType()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0d00c7

    invoke-virtual {v0, v11, v10}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 240
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->setOnActionListeners(Landroid/view/View;)V

    goto :goto_0

    .line 242
    .end local v7    # "video":Lcom/android/mms/model/VideoModel;
    .end local v8    # "videoIndicatorView":Landroid/widget/ImageView;
    .end local v9    # "videoUri":Landroid/net/Uri;
    :cond_3
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private addTextContent(Lcom/android/mms/model/SlideModel;Landroid/view/View;Z)V
    .locals 7
    .param p1, "slide"    # Lcom/android/mms/model/SlideModel;
    .param p2, "slideView"    # Landroid/view/View;
    .param p3, "isReceived"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 252
    const v5, 0x7f0d00cc

    .line 251
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;

    .line 253
    .local v2, "textContainer":Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    invoke-virtual {v2, v5}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->setOnShortClickListener(Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;)V

    .line 254
    const v5, 0x7f0d00ce

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    .line 256
    .local v3, "textView":Lcom/sonyericsson/conversations/ui/LinkifyTextView;
    const v5, 0x7f0d00cd

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 257
    .local v0, "subjectView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 258
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 281
    :cond_0
    invoke-virtual {v2, v6}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->setVisibility(I)V

    .line 282
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    invoke-virtual {v3, v6}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setVisibility(I)V

    .line 287
    :goto_0
    if-eqz p3, :cond_3

    :goto_1
    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/conversations/ui/MessageItemView;->setTextPadding(Landroid/view/View;Z)V

    .line 250
    return-void

    .line 259
    :cond_1
    invoke-virtual {v2, v4}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->setVisibility(I)V

    .line 260
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v5}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 261
    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setVisibility(I)V

    .line 262
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "text":Ljava/lang/String;
    const-string/jumbo v5, "\r"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xfa0

    if-gt v5, v6, :cond_2

    .line 267
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 268
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mHighlightPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 269
    invoke-virtual {v3, v1, p0}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->linkify(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;)V

    .line 270
    new-instance v5, Lcom/sonyericsson/conversations/ui/CopyTextCallBack;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lcom/sonyericsson/conversations/ui/CopyTextCallBack;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnActionBarShownListener;)V

    invoke-virtual {v3, v5}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 278
    :goto_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, p3}, Lcom/sonyericsson/conversations/ui/util/ViewUtils;->setThemedTextColor(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 279
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v5}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 276
    :cond_2
    invoke-direct {p0, v1, v3, p2}, Lcom/sonyericsson/conversations/ui/MessageItemView;->createExtraTextViews(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/LinkifyTextView;Landroid/view/View;)V

    goto :goto_2

    .line 287
    .end local v1    # "text":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private createAndAddAttachmentRow(Landroid/view/ViewGroup;Ljava/lang/String;Lcom/google/android/mms/pdu/PduPart;)V
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "caption"    # Ljava/lang/String;
    .param p3, "bodyPart"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    .line 626
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getIcon(Lcom/google/android/mms/pdu/PduPart;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2, p2, p1}, Lcom/sonyericsson/conversations/ui/MessageItemView;->createAttachmentListItemAndAddToParent(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 630
    .local v0, "attachmentRow":Landroid/view/View;
    invoke-virtual {p3}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    const v3, 0x7f0d00c5

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 632
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 631
    const v3, 0x7f0d00c7

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 633
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->setOnActionListeners(Landroid/view/View;)V

    .line 634
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 635
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 636
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v1

    .line 637
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/conversations/ui/MessageItemView;->setViewMargin(Landroid/view/View;Z)V

    .line 625
    return-void

    .line 636
    :cond_0
    const/4 v1, 0x1

    .local v1, "isSent":Z
    goto :goto_0
.end method

.method private createAttachmentListItemAndAddToParent(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "caption"    # Ljava/lang/String;
    .param p3, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 390
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03003e

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 391
    .local v0, "attachmentView":Landroid/view/View;
    const v5, 0x7f0d00c5

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 392
    .local v3, "iconView":Landroid/widget/ImageView;
    const v5, 0x7f0d00c7

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 394
    .local v2, "captionView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Message;->isReceivedMessage()Z

    move-result v4

    .line 396
    :goto_0
    if-eqz v4, :cond_2

    .line 397
    const v1, 0x7f020002

    .line 399
    .local v1, "backgroundRes":I
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 400
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2, v4}, Lcom/sonyericsson/conversations/ui/util/ViewUtils;->setThemedTextColor(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 402
    if-eqz p1, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1, v4}, Lcom/sonyericsson/conversations/ui/util/ViewUtils;->setThemedTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 404
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    :cond_0
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 410
    return-object v0

    .line 394
    .end local v1    # "backgroundRes":I
    :cond_1
    const/4 v4, 0x1

    .local v4, "isReceived":Z
    goto :goto_0

    .line 398
    .end local v4    # "isReceived":Z
    :cond_2
    const v1, 0x7f020001

    .restart local v1    # "backgroundRes":I
    goto :goto_1
.end method

.method private createExtraTextViews(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/LinkifyTextView;Landroid/view/View;)V
    .locals 17
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "initialTextView"    # Lcom/sonyericsson/conversations/ui/LinkifyTextView;
    .param p3, "slideView"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 711
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_1

    .line 712
    :cond_0
    return-void

    .line 715
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    .line 716
    .local v11, "textLength":I
    const v14, 0xc350

    if-le v11, v14, :cond_2

    .line 717
    const/4 v14, 0x0

    const v15, 0xc350

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 718
    const v11, 0xc350

    .line 722
    :cond_2
    div-int/lit16 v15, v11, 0xfa0

    .line 723
    rem-int/lit16 v14, v11, 0xfa0

    if-nez v14, :cond_5

    const/4 v14, 0x0

    .line 722
    :goto_0
    add-int/2addr v14, v15

    add-int/lit8 v7, v14, -0x1

    .line 729
    .local v7, "nbrExtraTextViews":I
    const/16 v2, 0xfa0

    .line 730
    .local v2, "breakIndex":I
    move-object/from16 v12, p1

    .line 731
    .local v12, "tmp":Ljava/lang/String;
    const-string/jumbo v14, " "

    const/16 v15, 0xfa0

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v5

    .line 732
    .local v5, "idx":I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_3

    const/16 v14, 0xf3c

    if-le v5, v14, :cond_3

    .line 733
    move v2, v5

    .line 736
    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 737
    .local v10, "substr":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 740
    .local v8, "remainder":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mHighlightPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 742
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v14, v1}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->linkify(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;)V

    .line 743
    new-instance v14, Lcom/sonyericsson/conversations/ui/CopyTextCallBack;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v14, v15, v0}, Lcom/sonyericsson/conversations/ui/CopyTextCallBack;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnActionBarShownListener;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 749
    const v14, 0x7f0d00cf

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 750
    .local v9, "slideTextExtra":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v14}, Lcom/sonyericsson/conversations/model/Message;->isReceivedMessage()Z

    move-result v6

    .line 751
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v7, :cond_8

    .line 752
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v15, 0x7f030040

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 753
    .local v3, "extraView":Landroid/view/View;
    const v14, 0x7f0d00cf

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    .line 755
    .local v13, "tv":Lcom/sonyericsson/conversations/ui/LinkifyTextView;
    add-int/lit8 v14, v7, -0x1

    if-eq v4, v14, :cond_7

    .line 756
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v11

    .line 757
    const/16 v14, 0xfa0

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 758
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 759
    const-string/jumbo v14, " "

    invoke-virtual {v12, v14, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v5

    .line 760
    const/4 v14, -0x1

    if-eq v5, v14, :cond_4

    add-int/lit8 v14, v2, -0x64

    if-le v5, v14, :cond_4

    .line 761
    move v2, v5

    .line 763
    :cond_4
    const/4 v14, 0x0

    invoke-interface {v8, v14, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 764
    invoke-interface {v8, v2, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 770
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v13, v14}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 771
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mHighlightPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v14}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 772
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->linkify(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;)V

    .line 773
    new-instance v14, Lcom/sonyericsson/conversations/ui/CopyTextCallBack;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v14, v15, v0}, Lcom/sonyericsson/conversations/ui/CopyTextCallBack;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnActionBarShownListener;)V

    invoke-virtual {v13, v14}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v13, v6}, Lcom/sonyericsson/conversations/ui/util/ViewUtils;->setThemedTextColor(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 778
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 779
    invoke-virtual {v9, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 780
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v14}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 751
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 723
    .end local v2    # "breakIndex":I
    .end local v3    # "extraView":Landroid/view/View;
    .end local v4    # "i":I
    .end local v5    # "idx":I
    .end local v7    # "nbrExtraTextViews":I
    .end local v8    # "remainder":Ljava/lang/CharSequence;
    .end local v9    # "slideTextExtra":Landroid/widget/LinearLayout;
    .end local v10    # "substr":Ljava/lang/CharSequence;
    .end local v12    # "tmp":Ljava/lang/String;
    .end local v13    # "tv":Lcom/sonyericsson/conversations/ui/LinkifyTextView;
    :cond_5
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 750
    .restart local v2    # "breakIndex":I
    .restart local v5    # "idx":I
    .restart local v7    # "nbrExtraTextViews":I
    .restart local v8    # "remainder":Ljava/lang/CharSequence;
    .restart local v9    # "slideTextExtra":Landroid/widget/LinearLayout;
    .restart local v10    # "substr":Ljava/lang/CharSequence;
    .restart local v12    # "tmp":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x1

    .local v6, "isReceived":Z
    goto/16 :goto_1

    .line 767
    .end local v6    # "isReceived":Z
    .restart local v3    # "extraView":Landroid/view/View;
    .restart local v4    # "i":I
    .restart local v13    # "tv":Lcom/sonyericsson/conversations/ui/LinkifyTextView;
    :cond_7
    move-object v10, v8

    goto :goto_3

    .line 707
    .end local v3    # "extraView":Landroid/view/View;
    .end local v13    # "tv":Lcom/sonyericsson/conversations/ui/LinkifyTextView;
    :cond_8
    return-void
.end method

.method private getCaptionForNonVcardLocationAttachment(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 8
    .param p1, "bodyPart"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    const v7, 0x7f0b013a

    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, "caption":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 478
    .local v1, "contentType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 479
    return-object v1

    .line 482
    :cond_0
    const-string/jumbo v4, "text/x-vCard"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 483
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 484
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    .line 483
    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/conversations/model/ModelCache;->getVCardContactName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "caption":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v4, "\ufffd"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 496
    const/4 v0, 0x0

    .line 500
    .end local v0    # "caption":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    sget-object v4, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 501
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    :cond_2
    :goto_0
    if-nez v0, :cond_5

    .line 507
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v3

    .line 508
    .local v3, "nameBytes":[B
    if-nez v3, :cond_3

    .line 509
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v3

    .line 511
    :cond_3
    if-nez v3, :cond_4

    .line 512
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v3

    .line 514
    :cond_4
    if-eqz v3, :cond_5

    .line 516
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {v3}, Landroid/webkit/URLUtil;->decode([B)[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .end local v3    # "nameBytes":[B
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    const-string/jumbo v4, "=?"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 530
    const-string/jumbo v4, "text/x-vCard"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 531
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 532
    const v5, 0x7f0b013b

    .line 531
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 540
    :cond_6
    :goto_2
    if-nez v0, :cond_7

    .line 541
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 544
    :cond_7
    return-object v0

    .line 503
    .local v0, "caption":Ljava/lang/String;
    :cond_8
    const-string/jumbo v4, "text/x-vCalendar"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 504
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/util/VCalendarUtil;->getVCalendarCaption(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .local v0, "caption":Ljava/lang/String;
    goto :goto_0

    .line 517
    .end local v0    # "caption":Ljava/lang/String;
    .restart local v3    # "nameBytes":[B
    :catch_0
    move-exception v2

    .line 520
    .local v2, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .restart local v0    # "caption":Ljava/lang/String;
    goto :goto_1

    .line 534
    .end local v0    # "caption":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "nameBytes":[B
    :cond_9
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "caption":Ljava/lang/String;
    goto :goto_2
.end method

.method private getIcon(Lcom/google/android/mms/pdu/PduPart;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "bodyPart"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getIconForAttachment(Lcom/google/android/mms/pdu/PduPart;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 612
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v2

    .line 613
    :goto_0
    if-eqz v2, :cond_2

    .line 614
    const v1, 0x7f0e0058

    .line 616
    .local v1, "iconTintColorRes":I
    :goto_1
    if-eqz v0, :cond_3

    .line 617
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 622
    :cond_0
    :goto_2
    return-object v0

    .line 612
    .end local v1    # "iconTintColorRes":I
    :cond_1
    const/4 v2, 0x1

    .local v2, "isSent":Z
    goto :goto_0

    .line 615
    .end local v2    # "isSent":Z
    :cond_2
    const v1, 0x7f0e0059

    .restart local v1    # "iconTintColorRes":I
    goto :goto_1

    .line 618
    :cond_3
    sget-boolean v3, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    .line 619
    const-string/jumbo v3, "Icon for attachment is null"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getIconForAttachment(Lcom/google/android/mms/pdu/PduPart;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "bodyPart"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    const/4 v4, 0x0

    .line 453
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 454
    .local v0, "contentType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 455
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 456
    return-object v4

    .line 458
    :cond_0
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 459
    const-string/jumbo v2, "application/ogg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 458
    if-eqz v2, :cond_2

    .line 460
    :cond_1
    const v2, 0x7f02003c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 461
    :cond_2
    const-string/jumbo v2, "text/x-vCard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 462
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/util/VCardUtil;->isVCardLocationObject(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 463
    const v2, 0x7f02003b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 465
    :cond_3
    const v2, 0x7f020038

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 467
    :cond_4
    const-string/jumbo v2, "text/x-vCalendar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 468
    const v2, 0x7f020039

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 470
    :cond_5
    const v2, 0x7f02003a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private getInlinedItemsSrc(Lcom/android/mms/model/SlideshowModel;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/SlideshowModel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "slide$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 433
    .local v3, "slide":Lcom/android/mms/model/SlideModel;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 436
    .local v0, "item":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 437
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    .line 438
    .local v5, "src":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 441
    const-string/jumbo v6, "cid:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 442
    const-string/jumbo v6, "cid:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 444
    :cond_3
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 449
    .end local v0    # "item":Lcom/android/mms/model/MediaModel;
    .end local v1    # "item$iterator":Ljava/util/Iterator;
    .end local v3    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v5    # "src":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method private getInlinedItemsUri(Lcom/android/mms/model/SlideshowModel;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/SlideshowModel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "slide$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 417
    .local v3, "slide":Lcom/android/mms/model/SlideModel;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 420
    .local v0, "item":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 421
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 426
    .end local v0    # "item":Lcom/android/mms/model/MediaModel;
    .end local v1    # "item$iterator":Ljava/util/Iterator;
    .end local v3    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_3
    return-object v2
.end method

.method private setOnActionListeners(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 700
    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isUserOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 699
    :cond_0
    return-void
.end method

.method private setTextPadding(Landroid/view/View;Z)V
    .locals 6
    .param p1, "container"    # Landroid/view/View;
    .param p2, "isSent"    # Z

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 300
    .local v1, "res":Landroid/content/res/Resources;
    const v4, 0x7f0c0035

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 301
    .local v0, "padding":I
    const v4, 0x7f0c0037

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 302
    .local v2, "textPadding":I
    const v4, 0x7f0c0036

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 303
    .local v3, "textTopPadding":I
    if-eqz p2, :cond_0

    move v5, v2

    .line 304
    :goto_0
    if-eqz p2, :cond_1

    add-int v4, v2, v0

    .line 303
    :goto_1
    invoke-virtual {p1, v5, v3, v4, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 298
    return-void

    .line 303
    :cond_0
    add-int v4, v2, v0

    move v5, v4

    goto :goto_0

    :cond_1
    move v4, v2

    .line 304
    goto :goto_1
.end method

.method private setViewMargin(Landroid/view/View;Z)V
    .locals 5
    .param p1, "container"    # Landroid/view/View;
    .param p2, "isSent"    # Z

    .prologue
    const/4 v3, 0x0

    .line 291
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0035

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 292
    .local v0, "margin":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 293
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 294
    if-eqz p2, :cond_1

    .end local v0    # "margin":I
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 295
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    return-void

    .restart local v0    # "margin":I
    :cond_0
    move v2, v0

    .line 293
    goto :goto_0

    :cond_1
    move v0, v3

    .line 294
    goto :goto_1
.end method


# virtual methods
.method protected createAttachmentViews(Lcom/android/mms/model/SlideshowModel;Landroid/view/ViewGroup;)V
    .locals 17
    .param p1, "slideShow"    # Lcom/android/mms/model/SlideshowModel;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 580
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v8

    .line 581
    .local v8, "body":Lcom/google/android/mms/pdu/PduBody;
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getInlinedItemsUri(Lcom/android/mms/model/SlideshowModel;)Ljava/util/ArrayList;

    move-result-object v14

    .line 582
    .local v14, "inlined":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getInlinedItemsSrc(Lcom/android/mms/model/SlideshowModel;)Ljava/util/ArrayList;

    move-result-object v15

    .line 583
    .local v15, "inlinedSrc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .local v5, "vcardLocationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    const/4 v7, 0x0

    .line 585
    .local v7, "hasAttachment":Z
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v9

    .line 586
    .local v9, "bodyCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v9, :cond_3

    .line 587
    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v10

    .line 588
    .local v10, "bodyPart":Lcom/google/android/mms/pdu/PduPart;
    if-eqz v10, :cond_0

    .line 589
    new-instance v12, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v12, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 590
    .local v12, "contentType":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v16

    .line 591
    .local v16, "uri":Landroid/net/Uri;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sonyericsson/conversations/ui/MessageItemView;->ignoreAttachment(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 586
    .end local v12    # "contentType":Ljava/lang/String;
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 592
    .restart local v12    # "contentType":Ljava/lang/String;
    .restart local v16    # "uri":Landroid/net/Uri;
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v15}, Lcom/sonyericsson/conversations/ui/MessageItemView;->isSlideShowingContent(Lcom/google/android/mms/pdu/PduPart;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 593
    const/4 v7, 0x1

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/sonyericsson/conversations/util/VCardUtil;->isVCardLocationObject(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 595
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 598
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getCaptionForNonVcardLocationAttachment(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v11

    .line 599
    .local v11, "caption":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11, v10}, Lcom/sonyericsson/conversations/ui/MessageItemView;->createAndAddAttachmentRow(Landroid/view/ViewGroup;Ljava/lang/String;Lcom/google/android/mms/pdu/PduPart;)V

    goto :goto_1

    .line 603
    .end local v10    # "bodyPart":Lcom/google/android/mms/pdu/PduPart;
    .end local v11    # "caption":Ljava/lang/String;
    .end local v12    # "contentType":Ljava/lang/String;
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 604
    new-instance v2, Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;-><init>(Lcom/sonyericsson/conversations/ui/MessageItemView;Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/ViewGroup;Z)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 579
    :cond_4
    return-void
.end method

.method protected createSlideView(Lcom/android/mms/model/SlideModel;)Landroid/view/View;
    .locals 7
    .param p1, "slide"    # Lcom/android/mms/model/SlideModel;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 190
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 191
    const v5, 0x7f03003f

    .line 190
    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 193
    .local v1, "slideView":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->isReceivedMessage()Z

    move-result v0

    .line 194
    :goto_0
    if-eqz v0, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/MessageItemView;->setSlideViewGravity(Landroid/widget/LinearLayout;Z)V

    .line 195
    if-eqz v0, :cond_2

    :goto_2
    invoke-direct {p0, p1, v1, v3}, Lcom/sonyericsson/conversations/ui/MessageItemView;->addImageContent(Lcom/android/mms/model/SlideModel;Landroid/view/View;Z)V

    .line 196
    invoke-direct {p0, p1, v1, v0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->addTextContent(Lcom/android/mms/model/SlideModel;Landroid/view/View;Z)V

    .line 197
    return-object v1

    .line 193
    :cond_0
    const/4 v0, 0x1

    .local v0, "isReceived":Z
    goto :goto_0

    .end local v0    # "isReceived":Z
    :cond_1
    move v2, v4

    .line 194
    goto :goto_1

    :cond_2
    move v3, v4

    .line 195
    goto :goto_2
.end method

.method protected createSlideshow(Lcom/sonyericsson/conversations/model/MmsMessage;Lcom/sonyericsson/conversations/ui/OnViewProducedListener;)Z
    .locals 6
    .param p1, "mmsMessage"    # Lcom/sonyericsson/conversations/model/MmsMessage;
    .param p2, "onViewProducedListener"    # Lcom/sonyericsson/conversations/ui/OnViewProducedListener;

    .prologue
    .line 161
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    .line 162
    .local v3, "slideShow":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/ui/MessageItemView;->createSlideView(Lcom/android/mms/model/SlideModel;)Landroid/view/View;

    move-result-object v4

    .line 165
    .local v4, "slideView":Landroid/view/View;
    const/4 v5, 0x0

    invoke-interface {p2, v4, v5}, Lcom/sonyericsson/conversations/ui/OnViewProducedListener;->onViewProduced(Landroid/view/View;Lcom/android/mms/model/SlideModel;)V

    .line 172
    .end local v4    # "slideView":Landroid/view/View;
    :cond_0
    const/4 v5, 0x1

    return v5

    .line 167
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "slide$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 168
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/MessageItemView;->createSlideView(Lcom/android/mms/model/SlideModel;)Landroid/view/View;

    move-result-object v4

    .line 169
    .restart local v4    # "slideView":Landroid/view/View;
    invoke-interface {p2, v4, v1}, Lcom/sonyericsson/conversations/ui/OnViewProducedListener;->onViewProduced(Landroid/view/View;Lcom/android/mms/model/SlideModel;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v2    # "slide$iterator":Ljava/util/Iterator;
    .end local v3    # "slideShow":Lcom/android/mms/model/SlideshowModel;
    .end local v4    # "slideView":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const/4 v5, 0x0

    return v5
.end method

.method protected createSlideshowSync(Lcom/sonyericsson/conversations/model/MmsMessage;)V
    .locals 1
    .param p1, "mmsMessage"    # Lcom/sonyericsson/conversations/model/MmsMessage;

    .prologue
    .line 185
    invoke-virtual {p0, p1, p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->createSlideshow(Lcom/sonyericsson/conversations/model/MmsMessage;Lcom/sonyericsson/conversations/ui/OnViewProducedListener;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->onSlideshowCreated(Z)V

    .line 184
    return-void
.end method

.method ignoreAttachment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 548
    const-string/jumbo v0, "application/smil"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    const-string/jumbo v0, "text/plain"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 548
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isSlideShowingContent(Lcom/google/android/mms/pdu/PduPart;Ljava/util/ArrayList;)Z
    .locals 11
    .param p1, "bodyPart"    # Lcom/google/android/mms/pdu/PduPart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/PduPart;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 553
    .local p2, "srcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 554
    .local v8, "value":Z
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v7

    .line 555
    .local v7, "name":[B
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v3

    .line 556
    .local v3, "fName":[B
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    .line 557
    .local v1, "contentId":[B
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    .line 558
    .local v0, "cLoc":[B
    if-eqz v0, :cond_0

    .line 559
    new-instance v2, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 560
    .local v2, "contentLocation":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 562
    .end local v2    # "contentLocation":Ljava/lang/String;
    .end local v8    # "value":Z
    :cond_0
    if-nez v8, :cond_1

    if-eqz v1, :cond_1

    .line 563
    new-instance v6, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v1, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 565
    .local v6, "mSrc":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x1

    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 566
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 568
    .end local v6    # "mSrc":Ljava/lang/String;
    :cond_1
    if-nez v8, :cond_2

    if-eqz v7, :cond_2

    .line 569
    new-instance v5, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 570
    .local v5, "mName":Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 572
    .end local v5    # "mName":Ljava/lang/String;
    :cond_2
    if-nez v8, :cond_3

    if-eqz v3, :cond_3

    .line 573
    new-instance v4, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 574
    .local v4, "fileName":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 576
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_3
    return v8
.end method

.method public isStacked()Z
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mIsStacked:Z

    return v0
.end method

.method public onActionBarShown()V
    .locals 0

    .prologue
    .line 837
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v4, 0x7f0d00c7

    const v3, 0x7f0d00c5

    .line 314
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 317
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 319
    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 320
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    if-eqz v2, :cond_3

    .line 322
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    invoke-interface {v2, p1, v1, v0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onShortClick(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V

    .line 313
    :cond_0
    :goto_2
    return-void

    .line 317
    :cond_1
    const/4 v1, 0x0

    .local v1, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 320
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v0, 0x0

    .local v0, "mimeType":Ljava/lang/String;
    goto :goto_1

    .line 325
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/sonyericsson/conversations/ui/MessageItemView$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/MessageItemView$2;-><init>(Lcom/sonyericsson/conversations/ui/MessageItemView;)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    .line 354
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    invoke-interface {v2, p1, v1, v0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onShortClick(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 308
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 361
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 362
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 360
    return-void
.end method

.method public onLinkClicked(Landroid/widget/TextView;Landroid/net/Uri;)V
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 153
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    invoke-interface {v0, p1, p2, v1}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onShortClick(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method

.method protected abstract onSlideshowCreated(Z)V
.end method

.method protected setArrowBackplate(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isSentMessage"    # Z

    .prologue
    .line 828
    if-nez p1, :cond_0

    .line 829
    return-void

    .line 831
    :cond_0
    if-eqz p2, :cond_1

    .line 832
    const v0, 0x7f020130

    .line 831
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 827
    return-void

    .line 833
    :cond_1
    const v0, 0x7f020122

    goto :goto_0
.end method

.method public setHighlightPattern(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "highlightPattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mHighlightPattern:Ljava/util/regex/Pattern;

    .line 375
    return-void
.end method

.method public abstract setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
.end method

.method public setOnObjectLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 137
    return-void
.end method

.method public setOnShortClickListener(Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    .line 147
    return-void
.end method

.method public setOnTextLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 142
    return-void
.end method

.method protected setSlideViewGravity(Landroid/widget/LinearLayout;Z)V
    .locals 1
    .param p1, "slideView"    # Landroid/widget/LinearLayout;
    .param p2, "isSent"    # Z

    .prologue
    .line 201
    if-eqz p2, :cond_0

    const v0, 0x800005

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 200
    return-void

    .line 201
    :cond_0
    const v0, 0x800003

    goto :goto_0
.end method

.method public setStacked(Z)V
    .locals 1
    .param p1, "isStacked"    # Z

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->isStacked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mWasStacked:Z

    .line 800
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mIsStacked:Z

    .line 798
    return-void
.end method

.method protected setStackedBackplate(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isSentMessage"    # Z

    .prologue
    .line 811
    if-nez p1, :cond_0

    .line 812
    return-void

    .line 814
    :cond_0
    if-eqz p2, :cond_1

    .line 815
    const v0, 0x7f020133

    .line 814
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 810
    return-void

    .line 816
    :cond_1
    const v0, 0x7f020125

    goto :goto_0
.end method

.method public wasPreviouslyStacked()Z
    .locals 1

    .prologue
    .line 794
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mWasStacked:Z

    return v0
.end method
