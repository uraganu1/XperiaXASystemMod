.class Lcom/android/systemui/SystemUIApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemUIApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SystemUIApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SystemUIApplication;


# direct methods
.method constructor <init>(Lcom/android/systemui/SystemUIApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/SystemUIApplication;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-static {v2}, Lcom/android/systemui/SystemUIApplication;->-get0(Lcom/android/systemui/SystemUIApplication;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v2, p0}, Lcom/android/systemui/SystemUIApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/SystemUIApplication;->-set0(Lcom/android/systemui/SystemUIApplication;Z)Z

    .line 79
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-static {v2}, Lcom/android/systemui/SystemUIApplication;->-get2(Lcom/android/systemui/SystemUIApplication;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-static {v2}, Lcom/android/systemui/SystemUIApplication;->-get1(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;

    move-result-object v2

    array-length v0, v2

    .line 81
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 82
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-static {v2}, Lcom/android/systemui/SystemUIApplication;->-get1(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
