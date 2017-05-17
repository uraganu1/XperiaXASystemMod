.class Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3;
.super Ljava/lang/Object;
.source "VerizonContentHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->fetchNumberCapabilitesFromService(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

.field final synthetic val$numbers:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    .prologue
    .line 185
    .local p2, "val$numbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3;->val$numbers:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 189
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3;->val$numbers:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "number$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 190
    .local v3, "number":Ljava/lang/String;
    const/4 v0, 0x0

    .line 192
    .local v0, "c":Lcom/gsma/services/rcs/capability/Capabilities;
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get7(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 193
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get2(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Lcom/gsma/services/rcs/capability/CapabilityService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gsma/services/rcs/capability/CapabilityService;->getMyCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;
    :try_end_0
    .catch Lcom/gsma/services/rcs/JoynContactFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/gsma/services/rcs/JoynServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 202
    .end local v0    # "c":Lcom/gsma/services/rcs/capability/Capabilities;
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get5(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 195
    .restart local v0    # "c":Lcom/gsma/services/rcs/capability/Capabilities;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get2(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Lcom/gsma/services/rcs/capability/CapabilityService;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/gsma/services/rcs/capability/CapabilityService;->getContactCapabilities(Ljava/lang/String;)Lcom/gsma/services/rcs/capability/Capabilities;
    :try_end_1
    .catch Lcom/gsma/services/rcs/JoynContactFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/gsma/services/rcs/JoynServiceException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .local v0, "c":Lcom/gsma/services/rcs/capability/Capabilities;
    goto :goto_1

    .line 199
    .local v0, "c":Lcom/gsma/services/rcs/capability/Capabilities;
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Lcom/gsma/services/rcs/JoynServiceException;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Error while getting contact capabilities."

    invoke-static {v5, v6, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 197
    .end local v2    # "e":Lcom/gsma/services/rcs/JoynServiceException;
    :catch_1
    move-exception v1

    .line 198
    .local v1, "e":Lcom/gsma/services/rcs/JoynContactFormatException;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Error while getting contact capabilities."

    invoke-static {v5, v6, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 204
    .end local v0    # "c":Lcom/gsma/services/rcs/capability/Capabilities;
    .end local v1    # "e":Lcom/gsma/services/rcs/JoynContactFormatException;
    .end local v3    # "number":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get4(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3$1;

    invoke-direct {v6, p0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3$1;-><init>(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    return-void
.end method
