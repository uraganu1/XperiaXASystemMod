.class final Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;
.super Ljava/lang/Object;
.source "IndexBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SectionTable"
.end annotation


# instance fields
.field final mSectionIndex:I

.field final mSeparatorIndex:I

.field final mSeparatorLabel:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "aSectionIndex"    # I
    .param p2, "aSeparatorIndex"    # I
    .param p3, "aLabel"    # Ljava/lang/String;

    .prologue
    .line 1077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;->mSectionIndex:I

    .line 1080
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;->mSeparatorIndex:I

    .line 1081
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;->mSeparatorLabel:Ljava/lang/String;

    .line 1078
    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;)V
    .locals 0
    .param p1, "aSectionIndex"    # I
    .param p2, "aSeparatorIndex"    # I
    .param p3, "aLabel"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;-><init>(IILjava/lang/String;)V

    return-void
.end method
