.class Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SimPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectSimAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;>;"
    const v0, 0x7f04005b

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 111
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimAdapter;->mContext:Landroid/content/Context;

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 109
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 117
    if-eqz p2, :cond_1

    move-object v2, p2

    .line 120
    .local v2, "resultView":Landroid/view/View;
    :goto_0
    const v5, 0x7f0e0210

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 121
    .local v0, "icon":Landroid/widget/ImageView;
    const v5, 0x7f0e0211

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 122
    .local v3, "rowTextView":Landroid/widget/TextView;
    const v5, 0x7f0e0212

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 123
    .local v4, "simNumberTextView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;

    .line 124
    .local v1, "item":Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;->-get0(Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;->-get2(Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 126
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;->-get1(Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 127
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;->-get1(Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_0
    return-object v2

    .line 117
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "item":Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;
    .end local v2    # "resultView":Landroid/view/View;
    .end local v3    # "rowTextView":Landroid/widget/TextView;
    .end local v4    # "simNumberTextView":Landroid/widget/TextView;
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 118
    const v6, 0x7f0400d3

    .line 117
    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "resultView":Landroid/view/View;
    goto :goto_0
.end method
