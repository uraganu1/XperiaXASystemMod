.class Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateSmscAsyncTask;
.super Landroid/os/AsyncTask;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSmscAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSimSlotIndex:I

.field private final mSmscKey:Ljava/lang/String;

.field private volatile mSmscNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/SettingsFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/SettingsFragment;
    .param p2, "smscKey"    # Ljava/lang/String;
    .param p3, "smscNumber"    # Ljava/lang/String;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateSmscAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 573
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateSmscAsyncTask;->mSmscKey:Ljava/lang/String;

    .line 574
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateSmscAsyncTask;->mSmscNumber:Ljava/lang/String;

    .line 575
    invoke-static {p1, p2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->-wrap1(Lcom/sonyericsson/conversations/ui/SettingsFragment;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateSmscAsyncTask;->mSimSlotIndex:I

    .line 572
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 579
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateSmscAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x0

    .line 580
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateSmscAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 581
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 582
    .local v1, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 585
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    .line 586
    :cond_1
    return-object v10

    .line 588
    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 590
    .local v2, "cr":Landroid/content/ContentResolver;
    :try_start_0
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateSmscAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    iget v9, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateSmscAsyncTask;->mSimSlotIndex:I

    invoke-static {v8, v9}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->-wrap0(Lcom/sonyericsson/conversations/ui/SettingsFragment;I)Landroid/net/Uri;

    move-result-object v6

    .line 591
    .local v6, "uri":Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 592
    .local v7, "values":Landroid/content/ContentValues;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateSmscAsyncTask;->mSmscNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\",145"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 593
    .local v5, "te":Ljava/lang/String;
    const-string/jumbo v8, "smsc_num"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 596
    .local v4, "ret":I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_3

    .line 597
    const-string/jumbo v8, "Error occurred on update smsc number in db"

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    .end local v4    # "ret":I
    .end local v5    # "te":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_3
    :goto_0
    return-object v10

    .line 599
    :catch_0
    move-exception v3

    .line 600
    .local v3, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception occurred "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/Object;

    .prologue
    .line 606
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "aVoid":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateSmscAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 607
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateSmscAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateSmscAsyncTask;->mSmscKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateSmscAsyncTask;->mSmscNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->-wrap2(Lcom/sonyericsson/conversations/ui/SettingsFragment;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 606
    return-void
.end method
