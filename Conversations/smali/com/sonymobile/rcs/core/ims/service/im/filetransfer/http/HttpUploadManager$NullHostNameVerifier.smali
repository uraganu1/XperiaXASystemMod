.class public Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager$NullHostNameVerifier;
.super Ljava/lang/Object;
.source "HttpUploadManager.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NullHostNameVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager$NullHostNameVerifier;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 529
    const/4 v0, 0x1

    return v0
.end method