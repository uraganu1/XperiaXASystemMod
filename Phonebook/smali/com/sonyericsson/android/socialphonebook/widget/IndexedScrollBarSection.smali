.class public abstract Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;
.super Ljava/lang/Object;
.source "IndexedScrollBarSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection$Animatable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract changeIfNecessary(I)Z
.end method

.method public abstract getCount()I
.end method

.method public abstract getCountForFontSizeCalculation()I
.end method

.method public abstract getLabel(I)Ljava/lang/String;
.end method

.method public abstract getLongestLabelIndex()I
.end method

.method public abstract getLongestLabelString()Ljava/lang/String;
.end method

.method public abstract getLongestLabelTextWidth()F
.end method

.method public abstract getPositionCount()I
.end method

.method public abstract getPositionFromSection(I)I
.end method

.method public abstract getPositionLabel(I)Ljava/lang/String;
.end method

.method public abstract getPositionTextScaleXs(I)F
.end method

.method public abstract getSectionFromPosition(I)I
.end method

.method public abstract getTextScaleXs(I)F
.end method

.method public abstract getTextWidth(I)F
.end method

.method public abstract setBoxHeight(F)V
.end method

.method public abstract setTextScaleXs(IF)V
.end method

.method public abstract setTextWidth(IF)V
.end method

.method public abstract stateChangePostProcessing()V
.end method
