.class Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SimImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimContactListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/SimImportActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    .prologue
    .line 764
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactListAdapter;-><init>(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 789
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 794
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 768
    if-nez p2, :cond_0

    .line 769
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400d2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 771
    .local v3, "view":Landroid/view/View;
    :goto_0
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 772
    .local v0, "itemView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;->-get2(Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;)Ljava/lang/String;

    move-result-object v1

    .line 773
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 774
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    :goto_1
    return-object v3

    .line 769
    .end local v0    # "itemView":Landroid/widget/TextView;
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    move-object v3, p2

    .restart local v3    # "view":Landroid/view/View;
    goto :goto_0

    .line 776
    .restart local v0    # "itemView":Landroid/widget/TextView;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;->-get3(Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;)Ljava/lang/String;

    move-result-object v2

    .line 777
    .local v2, "number":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;)Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
