.class Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$1;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 261
    const-string/jumbo v0, "call_log_filter"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->startAsyncRequery()V

    .line 260
    :cond_0
    return-void
.end method
