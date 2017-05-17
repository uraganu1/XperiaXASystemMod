.class public Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;
.super Landroid/widget/BaseAdapter;
.source "LinkedContactDisplayNameAdapter.java"


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mRawContactValuesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedDisplayNameIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "displayNameRawContactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/RawContactDelta;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iput-object v3, p0, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;->mRawContactValuesList:Ljava/util/List;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "rawContactDelta$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContactDelta;

    .line 43
    .local v1, "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    const-string/jumbo v3, "vnd.android.cursor.item/name"

    .line 42
    invoke-virtual {v1, v3}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    .line 44
    .local v0, "nameValues":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 45
    iget-object v3, p0, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;->mRawContactValuesList:Ljava/util/List;

    new-instance v4, Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;-><init>(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/ValuesDelta;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    iget-object v3, p0, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;->mRawContactValuesList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;->mSelectedDisplayNameIndex:I

    goto :goto_0

    .line 38
    .end local v0    # "nameValues":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_1
    return-void
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "resource"    # I

    .prologue
    .line 67
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 70
    .local v0, "resultView":Landroid/view/View;
    :goto_0
    const v2, 0x1020014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 71
    .local v1, "text1":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;->mRawContactValuesList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;

    invoke-virtual {v2}, Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;->getRawContactNameValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 74
    return-object v1

    .line 67
    .end local v0    # "resultView":Landroid/view/View;
    .end local v1    # "text1":Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 68
    const/4 v3, 0x0

    .line 67
    invoke-virtual {v2, p4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "resultView":Landroid/view/View;
    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;->mRawContactValuesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 62
    const v0, 0x1090009

    .line 61
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;->mRawContactValuesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;->getItem(I)Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 89
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedDisplayName()Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;->mSelectedDisplayNameIndex:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;->getItem(I)Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedDisplayNameIndex()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;->mSelectedDisplayNameIndex:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    const v0, 0x1090008

    .line 55
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
