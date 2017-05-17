.class public Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin$PrefixBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GenericContactDetailsPrefixPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrefixBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin$PrefixBroadcastReceiver;->this$0:Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    iget-object v2, p0, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin$PrefixBroadcastReceiver;->this$0:Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;

    invoke-static {v2}, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;->-get0(Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;)Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 83
    return-void

    .line 86
    :cond_0
    const-string/jumbo v2, "names"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "names":[Ljava/lang/String;
    const-string/jumbo v2, "numbers"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "numbers":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin$PrefixBroadcastReceiver;->this$0:Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;

    invoke-static {v2}, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;->-get0(Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 91
    iget-object v3, p0, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin$PrefixBroadcastReceiver;->this$0:Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;

    invoke-static {v3}, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;->-get1(Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 90
    invoke-static {v2, v4, v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixUtility;->showPrefixDialog(Landroid/app/FragmentManager;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin$PrefixBroadcastReceiver;->this$0:Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;

    invoke-static {v2}, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;->-get0(Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixUtility;->showMissingPrefixDialog(Landroid/app/FragmentManager;)V

    goto :goto_0
.end method
