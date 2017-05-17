.class Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->onQueryComplete(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$phoneNumbers:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Ljava/util/Set;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;
    .param p3, "val$cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2011
    .local p2, "val$phoneNumbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->val$phoneNumbers:Ljava/util/Set;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2014
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": runOnuiThread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 2015
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get12(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2016
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get12(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->val$phoneNumbers:Ljava/util/Set;

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->extractCapableNumbers(Ljava/util/ArrayList;)V

    .line 2020
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get10(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get10(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/widget/ListAdapter;

    move-result-object v3

    .line 2021
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    move-result-object v4

    .line 2020
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2025
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->setLoading(Z)V

    .line 2027
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->val$cursor:Landroid/database/Cursor;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2033
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-wrap3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v3, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-set0(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Z)Z

    .line 2036
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-wrap7(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V

    .line 2039
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2041
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-wrap5(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V

    .line 2044
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-wrap8(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V

    .line 2048
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->reportFullyDrawn()V

    .line 2049
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Success reportFullyDrawn()"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2055
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": runOnuiThread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 2013
    return-void

    .line 2022
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get10(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 2028
    :catch_0
    move-exception v0

    .line 2029
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in changing cursor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2033
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    const/4 v2, 0x1

    goto :goto_2

    .line 2050
    :catch_1
    move-exception v1

    .line 2052
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error reportFullyDrawn(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
