.class Lcom/android/incallui/SomcThermalCheck$2;
.super Landroid/content/BroadcastReceiver;
.source "SomcThermalCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SomcThermalCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SomcThermalCheck;


# direct methods
.method constructor <init>(Lcom/android/incallui/SomcThermalCheck;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcThermalCheck;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/incallui/SomcThermalCheck$2;->this$0:Lcom/android/incallui/SomcThermalCheck;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/incallui/SomcThermalCheck$2;->this$0:Lcom/android/incallui/SomcThermalCheck;

    const-string/jumbo v1, "STATUS"

    const/16 v2, 0x320

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/incallui/SomcThermalCheck;->-set0(Lcom/android/incallui/SomcThermalCheck;I)I

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Thermal Receiver onReceive : mThermalLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SomcThermalCheck$2;->this$0:Lcom/android/incallui/SomcThermalCheck;

    invoke-static {v1}, Lcom/android/incallui/SomcThermalCheck;->-get0(Lcom/android/incallui/SomcThermalCheck;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/incallui/SomcThermalCheck$2;->this$0:Lcom/android/incallui/SomcThermalCheck;

    invoke-virtual {v0}, Lcom/android/incallui/SomcThermalCheck;->isThermalCritical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/incallui/SomcThermalCheck$2;->this$0:Lcom/android/incallui/SomcThermalCheck;

    invoke-static {v0}, Lcom/android/incallui/SomcThermalCheck;->-wrap0(Lcom/android/incallui/SomcThermalCheck;)V

    .line 126
    :cond_0
    return-void
.end method
