.class public Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin$DocomoPrefixBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DocomoPrefixPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DocomoPrefixBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin$DocomoPrefixBroadcastReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 125
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin$DocomoPrefixBroadcastReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;

    iget-object v3, v3, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    const-string/jumbo v3, "type"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 129
    .local v2, "type":I
    const-string/jumbo v3, "names"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "names":[Ljava/lang/String;
    const-string/jumbo v3, "numbers"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "numbers":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v3, v0

    if-lez v3, :cond_2

    if-eqz v1, :cond_2

    array-length v3, v1

    if-lez v3, :cond_2

    .line 133
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin$DocomoPrefixBroadcastReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;

    iget-object v3, v3, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 134
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin$DocomoPrefixBroadcastReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;

    iget-object v4, v4, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mCurrentPhoneNumber:Ljava/lang/String;

    .line 133
    invoke-static {v3, v2, v0, v1, v4}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixUtility;->showPrefixDialog(Landroid/app/FragmentManager;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 135
    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 136
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin$DocomoPrefixBroadcastReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;

    iget-object v3, v3, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixUtility;->showMissingPrefixDialog(Landroid/app/FragmentManager;)V

    goto :goto_0
.end method
