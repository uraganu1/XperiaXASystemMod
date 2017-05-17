.class public Lcom/sonyericsson/conversations/ui/AttachmentItem;
.super Ljava/lang/Object;
.source "AttachmentItem.java"


# instance fields
.field private mId:I

.field private mResIcon:I

.field private mResId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "resIcon"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/sonyericsson/conversations/ui/AttachmentItem;->mId:I

    .line 28
    iput p2, p0, Lcom/sonyericsson/conversations/ui/AttachmentItem;->mResId:I

    .line 29
    iput p3, p0, Lcom/sonyericsson/conversations/ui/AttachmentItem;->mResIcon:I

    .line 26
    return-void
.end method


# virtual methods
.method public getRequestCode()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sonyericsson/conversations/ui/AttachmentItem;->mId:I

    return v0
.end method

.method public getResIcon()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 52
    iget v0, p0, Lcom/sonyericsson/conversations/ui/AttachmentItem;->mResIcon:I

    return v0
.end method

.method public getResId()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 44
    iget v0, p0, Lcom/sonyericsson/conversations/ui/AttachmentItem;->mResId:I

    return v0
.end method
