.class Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$1;
.super Ljava/lang/Object;
.source "SecureCameraLaunchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->-get5(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string/jumbo v0, "SecureCameraLaunchManager"

    const-string/jumbo v1, "Timeout waiting for camera availability"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->-get3(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera()V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->-set0(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;Z)Z

    .line 140
    :cond_0
    return-void
.end method
