.class Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory$ForeAndBackgroundColorSpan;
.super Landroid/text/style/BackgroundColorSpan;
.source "HighlightStyleFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ForeAndBackgroundColorSpan"
.end annotation


# instance fields
.field private mFgColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "fgColor"    # I
    .param p2, "bgColor"    # I

    .prologue
    .line 288
    invoke-direct {p0, p2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 289
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory$ForeAndBackgroundColorSpan;->mFgColor:I

    .line 287
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/text/style/BackgroundColorSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 295
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory$ForeAndBackgroundColorSpan;->mFgColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 293
    return-void
.end method
