.class Lcom/sonyericsson/conversations/ui/JoynPreferences$2$1;
.super Ljava/lang/Object;
.source "JoynPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/JoynPreferences$2;->onImApiConnectionStatusChange(Lcom/sonymobile/jms/environment/ImEnvironmentApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/JoynPreferences$2;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/JoynPreferences$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/JoynPreferences$2;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$2$1;->this$1:Lcom/sonyericsson/conversations/ui/JoynPreferences$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$2$1;->this$1:Lcom/sonyericsson/conversations/ui/JoynPreferences$2;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/JoynPreferences$2;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$2$1;->this$1:Lcom/sonyericsson/conversations/ui/JoynPreferences$2;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/JoynPreferences$2;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-get2(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Landroid/preference/PreferenceFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-wrap4(Lcom/sonyericsson/conversations/ui/JoynPreferences;Landroid/preference/PreferenceFragment;)V

    .line 272
    return-void
.end method
