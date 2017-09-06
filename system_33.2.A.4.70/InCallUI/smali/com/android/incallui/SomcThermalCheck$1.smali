.class Lcom/android/incallui/SomcThermalCheck$1;
.super Ljava/lang/Object;
.source "SomcThermalCheck.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 92
    iput-object p1, p0, Lcom/android/incallui/SomcThermalCheck$1;->this$0:Lcom/android/incallui/SomcThermalCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 95
    invoke-static {p2}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    move-result-object v1

    .line 96
    .local v1, "sysmonService":Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    if-eqz v1, :cond_0

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/SomcThermalCheck$1;->this$0:Lcom/android/incallui/SomcThermalCheck;

    invoke-interface {v1}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService;->getThermalLevelForTelephony()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/incallui/SomcThermalCheck;->-set0(Lcom/android/incallui/SomcThermalCheck;I)I

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sysmon ServiceConnection success : mThermalLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 100
    iget-object v3, p0, Lcom/android/incallui/SomcThermalCheck$1;->this$0:Lcom/android/incallui/SomcThermalCheck;

    invoke-static {v3}, Lcom/android/incallui/SomcThermalCheck;->-get0(Lcom/android/incallui/SomcThermalCheck;)I

    move-result v3

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "sysmon ServiceConnection failed."

    invoke-static {p0, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 108
    return-void
.end method
