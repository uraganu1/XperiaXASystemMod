.class public Lcom/sonymobile/rcs/service/api/server/ServerApiException;
.super Ljava/lang/IllegalStateException;
.source "ServerApiException.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 39
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ServerApiException;->mMessage:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 50
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/server/ServerApiException;->mMessage:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ServerApiException;->mMessage:Ljava/lang/String;

    return-object v0
.end method
