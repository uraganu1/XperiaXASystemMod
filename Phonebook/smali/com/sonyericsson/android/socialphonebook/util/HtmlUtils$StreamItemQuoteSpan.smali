.class public Lcom/sonyericsson/android/socialphonebook/util/HtmlUtils$StreamItemQuoteSpan;
.super Landroid/text/style/QuoteSpan;
.source "HtmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/HtmlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamItemQuoteSpan"
.end annotation


# instance fields
.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "width"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Landroid/text/style/QuoteSpan;-><init>(I)V

    .line 135
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/util/HtmlUtils$StreamItemQuoteSpan;->mWidth:I

    .line 133
    return-void
.end method


# virtual methods
.method public getLeadingMargin(Z)I
    .locals 1
    .param p1, "first"    # Z

    .prologue
    .line 143
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/HtmlUtils$StreamItemQuoteSpan;->mWidth:I

    return v0
.end method
