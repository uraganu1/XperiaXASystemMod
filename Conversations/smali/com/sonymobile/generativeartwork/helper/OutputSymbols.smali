.class public Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
.super Ljava/lang/Object;
.source "OutputSymbols.java"


# instance fields
.field public Symbols:[C


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    .line 18
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 19
    return-void
.end method
