.class Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin$1;
.super Ljava/lang/Object;
.source "VerizonViltePlugin.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin$1;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitesChange()V
    .locals 3

    .prologue
    .line 186
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin$1;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->-get0(Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;

    .line 187
    .local v0, "listener":Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;
    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;->onVideoCallEntityChange()V

    goto :goto_0

    .line 185
    .end local v0    # "listener":Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;
    :cond_0
    return-void
.end method

.method public onConfiguration(Z)V
    .locals 3
    .param p1, "isVilteSupportChanged"    # Z

    .prologue
    .line 173
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin$1;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->-get0(Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin$1;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->isVilteSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin$1;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->-get1(Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;)Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->isBindCalled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin$1;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->-get0(Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;

    .line 180
    .local v0, "listener":Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;->onConfigurationChange(Z)V

    goto :goto_1

    .line 175
    .end local v0    # "listener":Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin$1;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->-get1(Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;)Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->registerCallStateObserver()V

    .line 176
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin$1;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->-get1(Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;)Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->bindService()V

    goto :goto_0

    .line 172
    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method
