.class Lcom/android/settings/TetherService$1;
.super Landroid/content/BroadcastReceiver;
.source "TetherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherService;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/TetherService;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 261
    invoke-static {}, Lcom/android/settings/TetherService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "TetherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got provision result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 263
    const v3, 0x104001b

    .line 262
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "provisionResponse":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    iget-object v2, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v2, v5}, Lcom/android/settings/TetherService;->-set2(Lcom/android/settings/TetherService;Z)Z

    .line 266
    iget-object v2, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v2}, Lcom/android/settings/TetherService;->-get1(Lcom/android/settings/TetherService;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v3}, Lcom/android/settings/TetherService;->-get2(Lcom/android/settings/TetherService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 267
    .local v0, "checkType":I
    const-string/jumbo v2, "EntitlementResult"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 268
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v2}, Lcom/android/settings/TetherService;->-get3(Lcom/android/settings/TetherService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    iget-object v2, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v2}, Lcom/android/settings/TetherService;->-wrap3(Lcom/android/settings/TetherService;)V

    .line 270
    iget-object v2, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v2, v5}, Lcom/android/settings/TetherService;->-set1(Lcom/android/settings/TetherService;Z)Z

    .line 285
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v2}, Lcom/android/settings/TetherService;->-get2(Lcom/android/settings/TetherService;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/TetherService;->-set0(Lcom/android/settings/TetherService;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v3}, Lcom/android/settings/TetherService;->-get1(Lcom/android/settings/TetherService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 287
    iget-object v2, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-virtual {v2}, Lcom/android/settings/TetherService;->stopSelf()V

    .line 260
    .end local v0    # "checkType":I
    :cond_2
    :goto_1
    return-void

    .line 273
    .restart local v0    # "checkType":I
    :cond_3
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 275
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v2}, Lcom/android/settings/TetherService;->-wrap2(Lcom/android/settings/TetherService;)V

    goto :goto_0

    .line 278
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v2}, Lcom/android/settings/TetherService;->-wrap0(Lcom/android/settings/TetherService;)V

    goto :goto_0

    .line 281
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v2}, Lcom/android/settings/TetherService;->-wrap1(Lcom/android/settings/TetherService;)V

    goto :goto_0

    .line 290
    :cond_4
    iget-object v2, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    iget-object v3, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v3}, Lcom/android/settings/TetherService;->-get2(Lcom/android/settings/TetherService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/TetherService;->-wrap4(Lcom/android/settings/TetherService;I)V

    goto :goto_1

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
