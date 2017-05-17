.class Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;
.super Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LookupCallerIdTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;",
        "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mNumber:Ljava/lang/String;

.field private mPosition:I

.field private mType:I

.field private mUseCallerIdName:Z

.field private mViews:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "target"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;
    .param p2, "views"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "useCallerIdName"    # Z

    .prologue
    .line 733
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 734
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->mNumber:Ljava/lang/String;

    .line 735
    iput p4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->mType:I

    .line 736
    iput-boolean p5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->mUseCallerIdName:Z

    .line 737
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->mViews:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;

    .line 732
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;[Ljava/lang/Integer;)Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;
    .locals 3
    .param p1, "target"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;
    .param p2, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v1, 0x0

    .line 742
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 743
    array-length v0, p2

    if-lez v0, :cond_0

    .line 744
    aget-object v0, p2, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->mPosition:I

    .line 746
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->-get0(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->mNumber:Ljava/lang/String;

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->mType:I

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;

    move-result-object v0

    return-object v0

    .line 748
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 741
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Integer;

    .end local p2    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->doInBackground(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;[Ljava/lang/Integer;)Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;)V
    .locals 7
    .param p1, "target"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;
    .param p2, "cidContact"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 753
    const/4 v1, 0x0

    .line 754
    .local v1, "cityId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 755
    .local v0, "callerName":Ljava/lang/String;
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->mViews:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;

    iget v2, v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->position:I

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->mPosition:I

    if-ne v2, v3, :cond_2

    .line 756
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;)I

    move-result v2

    .line 757
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->mViews:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;

    iget-object v3, v3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 756
    invoke-virtual {p2, v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->computeCityIdDisplayName(ILandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, "cityId":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->mUseCallerIdName:Z

    if-eqz v2, :cond_0

    .line 759
    invoke-virtual {p2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->createNameIdDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 761
    .end local v0    # "callerName":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;)Landroid/util/LruCache;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->mNumber:Ljava/lang/String;

    .line 762
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 761
    invoke-virtual {v2, v3, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 764
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->mViews:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 765
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->mViews:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberLabelHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 766
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->mViews:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 767
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->mViews:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 770
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->mViews:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->nameView:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->mViews:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 772
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->mViews:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberLabelHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 773
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->mViews:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 752
    .end local v1    # "cityId":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "cidContact"    # Ljava/lang/Object;

    .prologue
    .line 752
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;

    .end local p2    # "cidContact":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->onPostExecute(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;)V

    return-void
.end method
