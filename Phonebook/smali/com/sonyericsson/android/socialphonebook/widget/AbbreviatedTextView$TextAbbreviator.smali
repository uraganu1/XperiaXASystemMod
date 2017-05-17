.class public Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;
.super Ljava/lang/Object;
.source "AbbreviatedTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextAbbreviator"
.end annotation


# static fields
.field static final ABBREVIATION_TOKEN:Ljava/lang/String; = " +"

.field static final SEPARATION_TOKEN:Ljava/lang/String; = ", "


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;->mBuilder:Ljava/lang/StringBuilder;

    .line 62
    return-void
.end method


# virtual methods
.method public getAbbreviatedText([Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/lang/String;
    .locals 8
    .param p1, "abbreviationContent"    # [Ljava/lang/String;
    .param p2, "availableWidth"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v7, 0x0

    .line 85
    array-length v1, p1

    .line 86
    .local v1, "contentCount":I
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 88
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 89
    aget-object v3, p1, v4

    .line 92
    .local v3, "currentItem":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 93
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    :cond_0
    sub-int v5, v1, v4

    .line 99
    .local v5, "remainingCount":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "content":Ljava/lang/String;
    add-int/lit8 v6, v4, 0x1

    if-ge v6, v1, :cond_1

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " +"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v5, -0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_1
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v2, v6

    .line 108
    .local v2, "contentWidth":I
    if-gt v2, p2, :cond_2

    .line 109
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 115
    :cond_2
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v7, " +"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;->mBuilder:Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "contentWidth":I
    .end local v3    # "currentItem":Ljava/lang/String;
    .end local v5    # "remainingCount":I
    :cond_3
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
