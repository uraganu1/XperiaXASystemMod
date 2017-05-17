.class public Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TextTemplateListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput p2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mMode:I

    .line 37
    return-void
.end method

.method private getNewId()I
    .locals 4

    .prologue
    .line 123
    const/4 v1, 0x1

    .line 124
    .local v1, "id":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->getCount()I

    move-result v0

    .line 125
    .local v0, "count":I
    if-eqz v0, :cond_0

    .line 126
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/template/sms/TextTemplate;

    invoke-virtual {v2}, Lcom/sonymobile/template/sms/TextTemplate;->getId()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 128
    :cond_0
    return v1
.end method


# virtual methods
.method public addTextTemplate(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Lcom/sonymobile/template/sms/TextTemplate;

    invoke-direct {v0}, Lcom/sonymobile/template/sms/TextTemplate;-><init>()V

    .line 77
    .local v0, "newTemplate":Lcom/sonymobile/template/sms/TextTemplate;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->getNewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/template/sms/TextTemplate;->setId(I)V

    .line 78
    invoke-virtual {v0, p1}, Lcom/sonymobile/template/sms/TextTemplate;->setText(Ljava/lang/String;)V

    .line 79
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/template/sms/TextTemplate;->setAsUserDefinedTemplate(Z)V

    .line 80
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->notifyDataSetChanged()V

    .line 74
    return-void
.end method

.method public editTextTemplate(ILjava/lang/String;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/template/sms/TextTemplate;

    .line 88
    .local v0, "originalTemplate":Lcom/sonymobile/template/sms/TextTemplate;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p2}, Lcom/sonymobile/template/sms/TextTemplate;->setText(Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/template/sms/TextTemplate;->setAsUserDefinedTemplate(Z)V

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->notifyDataSetChanged()V

    .line 85
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/template/sms/TextTemplate;

    invoke-virtual {v0}, Lcom/sonymobile/template/sms/TextTemplate;->getId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/template/sms/TextTemplate;

    .line 46
    .local v1, "template":Lcom/sonymobile/template/sms/TextTemplate;
    if-nez p2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030046

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    instance-of v2, p2, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 52
    check-cast v2, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;

    invoke-virtual {v1}, Lcom/sonymobile/template/sms/TextTemplate;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->setTemplateText(Ljava/lang/String;)V

    move-object v2, p2

    .line 53
    check-cast v2, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;

    .line 54
    iget v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    .line 53
    :goto_0
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->setCheckableMode(Z)V

    .line 56
    :cond_1
    return-object p2

    .line 54
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeTextTemplates(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "templateIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "id$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 99
    .local v0, "id":I
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "item$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/template/sms/TextTemplate;

    .line 100
    .local v2, "item":Lcom/sonymobile/template/sms/TextTemplate;
    invoke-virtual {v2}, Lcom/sonymobile/template/sms/TextTemplate;->getId()I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 101
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    .end local v0    # "id":I
    .end local v2    # "item":Lcom/sonymobile/template/sms/TextTemplate;
    .end local v3    # "item$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->notifyDataSetChanged()V

    .line 97
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;"
    if-eqz p1, :cond_0

    .line 112
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->notifyDataSetChanged()V

    .line 110
    return-void
.end method

.method public switchCursorAdapterMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mMode:I

    .line 131
    return-void
.end method
