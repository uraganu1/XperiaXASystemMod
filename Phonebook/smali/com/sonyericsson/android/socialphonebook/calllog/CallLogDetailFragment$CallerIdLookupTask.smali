.class final Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallerIdLookupTask;
.super Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;
.source "CallLogDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallerIdLookupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;",
        "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private mEntry:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;
    .param p2, "target"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;
    .param p3, "entry"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    .param p4, "view"    # Landroid/view/View;

    .prologue
    .line 1316
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallerIdLookupTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    .line 1318
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1319
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallerIdLookupTask;->mView:Landroid/view/View;

    .line 1320
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallerIdLookupTask;->mEntry:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    .line 1317
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;[Ljava/lang/Integer;)Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;
    .locals 3
    .param p1, "target"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;
    .param p2, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 1335
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1336
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallerIdLookupTask;->mEntry:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->number:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1335
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1324
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Integer;

    .end local p2    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallerIdLookupTask;->doInBackground(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;[Ljava/lang/Integer;)Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;)V
    .locals 13
    .param p1, "target"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;
    .param p2, "cidContact"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;

    .prologue
    .line 1342
    if-eqz p2, :cond_1

    .line 1343
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallerIdLookupTask;->mView:Landroid/view/View;

    const v11, 0x1020014

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1344
    .local v5, "nameView":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 1345
    const-string/jumbo v11, "window"

    .line 1344
    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 1346
    .local v9, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 1347
    .local v6, "screenDisplay":Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 1348
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {v6, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1349
    iget v10, v7, Landroid/graphics/Point;->x:I

    iget v11, v7, Landroid/graphics/Point;->y:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1350
    .local v0, "availableWidth":I
    int-to-float v10, v0

    const v11, 0x3f3851ec    # 0.72f

    mul-float/2addr v10, v11

    float-to-int v8, v10

    .line 1351
    .local v8, "widthOfText":I
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallerIdLookupTask;->mView:Landroid/view/View;

    const v11, 0x7f0e0054

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1353
    .local v3, "cityIdView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    .line 1352
    invoke-virtual {p2, v8, v10}, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->computeCityIdDisplayName(ILandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v2

    .line 1354
    .local v2, "cityId":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallerIdLookupTask;->mEntry:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    iget-boolean v10, v10, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->useCallerIdName:Z

    if-eqz v10, :cond_0

    .line 1355
    invoke-virtual {p2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->createNameIdDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 1356
    .local v4, "nameId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1357
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallerIdLookupTask;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    const v12, 0x7f090097

    invoke-virtual {v10, v12, v11}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1358
    .local v1, "callName":Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1361
    .end local v1    # "callName":Ljava/lang/String;
    .end local v4    # "nameId":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1362
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1363
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    .end local v0    # "availableWidth":I
    .end local v2    # "cityId":Ljava/lang/String;
    .end local v3    # "cityIdView":Landroid/widget/TextView;
    .end local v5    # "nameView":Landroid/widget/TextView;
    .end local v6    # "screenDisplay":Landroid/view/Display;
    .end local v7    # "size":Landroid/graphics/Point;
    .end local v8    # "widthOfText":I
    .end local v9    # "windowManager":Landroid/view/WindowManager;
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "cidContact"    # Ljava/lang/Object;

    .prologue
    .line 1340
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;

    .end local p2    # "cidContact":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallerIdLookupTask;->onPostExecute(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;)V

    return-void
.end method
