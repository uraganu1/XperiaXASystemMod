.class Lcom/sonyericsson/conversations/ui/JoynPreferences$2;
.super Ljava/lang/Object;
.source "JoynPreferences.java"

# interfaces
.implements Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/JoynPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/JoynPreferences;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/JoynPreferences;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$2;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImApiConnectionStatusChange(Lcom/sonymobile/jms/environment/ImEnvironmentApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V
    .locals 2
    .param p1, "imEnvironmentApi"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    .param p2, "imApiConnectionStatus"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$2;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$2;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-get2(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Landroid/preference/PreferenceFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->isAddedTo(Landroid/preference/PreferenceFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$2;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-get0(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/conversations/ui/JoynPreferences$2$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/JoynPreferences$2$1;-><init>(Lcom/sonyericsson/conversations/ui/JoynPreferences$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    :cond_0
    return-void
.end method
