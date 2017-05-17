.class Lcom/sonyericsson/conversations/ui/JoynPreferences$4;
.super Ljava/lang/Object;
.source "JoynPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/JoynPreferences;->onRcsServiceStateChanged(Landroid/preference/SwitchPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

.field final synthetic val$pref:Landroid/preference/SwitchPreference;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/JoynPreferences;Landroid/preference/SwitchPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/JoynPreferences;
    .param p2, "val$pref"    # Landroid/preference/SwitchPreference;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$4;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$4;->val$pref:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$4;->val$pref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$4;->val$pref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSelectable(Z)V

    .line 258
    return-void
.end method
