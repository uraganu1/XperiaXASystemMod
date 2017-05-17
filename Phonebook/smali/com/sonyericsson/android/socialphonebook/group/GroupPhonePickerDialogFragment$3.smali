.class Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$3;
.super Landroid/os/AsyncTask;
.source "GroupPhonePickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->changePrimarySettingOnDB(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "dataItems"    # [Ljava/lang/Object;

    .prologue
    .line 422
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1    # "dataItems":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$3;->doInBackground([Ljava/util/ArrayList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/ArrayList;)Ljava/lang/Void;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, "dataItems":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;>;"
    const/4 v12, 0x0

    .line 423
    const/4 v9, 0x0

    aget-object v8, p1, v9

    .line 424
    .local v8, "setPrimaryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v7, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "dataItem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    .line 427
    .local v2, "dataItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 428
    iget-wide v10, v2, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 427
    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 429
    .local v4, "dataUri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 430
    .local v1, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v9, "is_super_primary"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 431
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 434
    .end local v1    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v2    # "dataItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;
    .end local v4    # "dataUri":Landroid/net/Uri;
    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 435
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 436
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "com.android.contacts"

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    :goto_1
    return-object v12

    .line 442
    :catch_0
    move-exception v5

    .line 443
    .local v5, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v5}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1

    .line 440
    .end local v5    # "e":Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v6

    .line 441
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
