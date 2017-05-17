.class public final Lcom/android/contacts/util/MemoryUtils;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# static fields
.field private static sTotalMemorySize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/contacts/util/MemoryUtils;->sTotalMemorySize:J

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTotalMemorySize()J
    .locals 6

    .prologue
    .line 30
    sget-wide v2, Lcom/android/contacts/util/MemoryUtils;->sTotalMemorySize:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 31
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 32
    .local v0, "reader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 37
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    sput-wide v2, Lcom/android/contacts/util/MemoryUtils;->sTotalMemorySize:J

    .line 39
    :cond_0
    sget-wide v2, Lcom/android/contacts/util/MemoryUtils;->sTotalMemorySize:J

    return-wide v2
.end method
