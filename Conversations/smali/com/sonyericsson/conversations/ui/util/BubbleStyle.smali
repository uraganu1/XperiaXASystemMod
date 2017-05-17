.class public Lcom/sonyericsson/conversations/ui/util/BubbleStyle;
.super Ljava/lang/Object;
.source "BubbleStyle.java"


# static fields
.field private static final ATTRS:[I


# instance fields
.field private final mTypedArray:Landroid/content/res/TypedArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/BubbleStyle;->ATTRS:[I

    .line 21
    return-void

    .line 24
    nop

    :array_0
    .array-data 4
        0x7f01001f
        0x7f010020
        0x7f010021
        0x7f010022
        0x7f010023
        0x7f010024
        0x7f010025
    .end array-data
.end method

.method private constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/BubbleStyle;->mTypedArray:Landroid/content/res/TypedArray;

    .line 44
    return-void
.end method

.method public static from(Landroid/content/Context;I)Lcom/sonyericsson/conversations/ui/util/BubbleStyle;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "styleResId"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v1, Lcom/sonyericsson/conversations/ui/util/BubbleStyle;->ATTRS:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    new-instance v1, Lcom/sonyericsson/conversations/ui/util/BubbleStyle;

    invoke-direct {v1, v0}, Lcom/sonyericsson/conversations/ui/util/BubbleStyle;-><init>(Landroid/content/res/TypedArray;)V

    return-object v1
.end method


# virtual methods
.method public applyForFileTransferRow1Text(Landroid/widget/TextView;)Lcom/sonyericsson/conversations/ui/util/BubbleStyle;
    .locals 4
    .param p1, "rowTextView"    # Landroid/widget/TextView;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/BubbleStyle;->mTypedArray:Landroid/content/res/TypedArray;

    const/4 v2, 0x1

    const/high16 v3, -0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 91
    .local v0, "rowTextColor":I
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    return-object p0
.end method

.method public applyTintForAttachmentIcon(Landroid/widget/ImageView;)Lcom/sonyericsson/conversations/ui/util/BubbleStyle;
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/BubbleStyle;->mTypedArray:Landroid/content/res/TypedArray;

    const/4 v2, 0x3

    const/high16 v3, -0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 109
    .local v0, "tintColor":I
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 110
    return-object p0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/BubbleStyle;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method
