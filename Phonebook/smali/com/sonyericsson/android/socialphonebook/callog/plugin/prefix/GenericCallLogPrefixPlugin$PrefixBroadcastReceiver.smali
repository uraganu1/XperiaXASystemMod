.class Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin$PrefixBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GenericCallLogPrefixPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefixBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin$PrefixBroadcastReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin$PrefixBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin$PrefixBroadcastReceiver;-><init>(Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin$PrefixBroadcastReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->-get0(Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;)Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 119
    return-void

    .line 122
    :cond_0
    const-string/jumbo v2, "names"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "names":[Ljava/lang/String;
    const-string/jumbo v2, "numbers"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "numbers":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin$PrefixBroadcastReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->-get0(Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 127
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin$PrefixBroadcastReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->-get1(Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 126
    invoke-static {v2, v4, v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixUtility;->showPrefixDialog(Landroid/app/FragmentManager;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin$PrefixBroadcastReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->-get0(Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixUtility;->showMissingPrefixDialog(Landroid/app/FragmentManager;)V

    goto :goto_0
.end method
