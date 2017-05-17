.class Lcom/sonymobile/jms/util/ErrorUtil$1;
.super Ljava/lang/Object;
.source "ErrorUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/jms/util/ErrorUtil;->throwOnUIThread(Ljava/lang/RuntimeException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$e:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Ljava/lang/RuntimeException;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/sonymobile/jms/util/ErrorUtil$1;->val$e:Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sonymobile/jms/util/ErrorUtil$1;->val$e:Ljava/lang/RuntimeException;

    throw v0
.end method
