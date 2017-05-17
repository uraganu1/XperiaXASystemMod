.class Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$2;
.super Ljava/lang/Object;
.source "CallLogContentHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->buildQueryCommand(Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

.field final synthetic val$selection:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;
    .param p2, "val$selection"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$2;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$2;->val$selection:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$2;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$2;->val$selection:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->-wrap0(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 241
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v0, :cond_0

    .line 242
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$2;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->-get2(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 243
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$2;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->-get1(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 244
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$2;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->-get1(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;->onQueryComplete(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v3

    .line 233
    :cond_0
    return-void

    .line 237
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "querySync("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$2;->val$selection:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 242
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
