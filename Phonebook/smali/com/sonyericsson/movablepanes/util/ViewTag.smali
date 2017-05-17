.class public Lcom/sonyericsson/movablepanes/util/ViewTag;
.super Ljava/lang/Object;
.source "ViewTag.java"


# static fields
.field private static TAG_COUNTER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const v0, -0x515600

    sput v0, Lcom/sonyericsson/movablepanes/util/ViewTag;->TAG_COUNTER:I

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNextTag()I
    .locals 2

    .prologue
    .line 26
    sget v0, Lcom/sonyericsson/movablepanes/util/ViewTag;->TAG_COUNTER:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sonyericsson/movablepanes/util/ViewTag;->TAG_COUNTER:I

    return v0
.end method
