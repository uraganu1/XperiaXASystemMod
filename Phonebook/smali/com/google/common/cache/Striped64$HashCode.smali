.class final Lcom/google/common/cache/Striped64$HashCode;
.super Ljava/lang/Object;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/Striped64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HashCode"
.end annotation


# static fields
.field static final rng:Ljava/util/Random;


# instance fields
.field code:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/common/cache/Striped64$HashCode;->rng:Ljava/util/Random;

    .line 115
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    sget-object v1, Lcom/google/common/cache/Striped64$HashCode;->rng:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 120
    .local v0, "h":I
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .end local v0    # "h":I
    :cond_0
    iput v0, p0, Lcom/google/common/cache/Striped64$HashCode;->code:I

    .line 118
    return-void
.end method
