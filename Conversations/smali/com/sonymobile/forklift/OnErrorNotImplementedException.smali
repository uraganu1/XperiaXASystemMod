.class public Lcom/sonymobile/forklift/OnErrorNotImplementedException;
.super Ljava/lang/RuntimeException;
.source "OnErrorNotImplementedException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 11
    const-string/jumbo v0, "Look for actual exception below. You can handle it in UI thread by using onError() handler in your loader"

    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    return-void
.end method
