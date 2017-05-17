.class Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager$1;
.super Ljava/lang/Thread;
.source "RegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->restart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 253
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "RegistrationManager-restart()"

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/utils/WakeLockUtils;->acquireWakeLock(Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->stopRegistration()V

    .line 260
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registration()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "RegistrationManager-restart()"

    .line 262
    invoke-static {v0}, Lcom/sonymobile/rcs/utils/WakeLockUtils;->releaseWakeLock(Ljava/lang/String;)V

    .line 264
    return-void

    .line 263
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "RegistrationManager-restart()"

    .line 262
    invoke-static {v1}, Lcom/sonymobile/rcs/utils/WakeLockUtils;->releaseWakeLock(Ljava/lang/String;)V

    throw v0
.end method
