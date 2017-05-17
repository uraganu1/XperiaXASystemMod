.class public Lcom/android/contacts/editor/StructuredNameEditorView;
.super Lcom/android/contacts/editor/TextFieldsEditorView;
.source "StructuredNameEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;
    }
.end annotation


# instance fields
.field private mChanged:Z

.field private mSnapshot:Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method private rebuildStructuredName(Lcom/android/contacts/common/model/ValuesDelta;)V
    .locals 5
    .param p1, "values"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/StructuredNameEditorView;->valuesToStructuredNameMap(Lcom/android/contacts/common/model/ValuesDelta;)Ljava/util/Map;

    move-result-object v1

    .line 109
    .local v1, "structuredNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sonyericsson/android/socialphonebook/util/NameConverter;->structuredNameToDisplayName(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->setDisplayName(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v2, "data2"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 113
    const-string/jumbo v3, "data3"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 112
    invoke-virtual {p1, v2, v3}, Lcom/android/contacts/common/model/ValuesDelta;->setFirstAndLastName(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v2, "data4"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 115
    const-string/jumbo v3, "data5"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 116
    const-string/jumbo v4, "data6"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 114
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/contacts/common/model/ValuesDelta;->setPrefixMiddleAndSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private valuesToStructuredNameMap(Lcom/android/contacts/common/model/ValuesDelta;)Ljava/util/Map;
    .locals 6
    .param p1, "values"    # Lcom/android/contacts/common/model/ValuesDelta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v1, "structuredNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 102
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/StructuredNameEditorView;->isFieldChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/StructuredNameEditorView;->saveValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->hasShortAndLongForms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/StructuredNameEditorView;->rebuildStructuredName(Lcom/android/contacts/common/model/ValuesDelta;)V

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->notifyEditorListener()V

    .line 80
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 129
    check-cast v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;

    .line 130
    .local v0, "ss":Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;
    iget-object v1, v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSuperState:Landroid/os/Parcelable;

    invoke-super {p0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 132
    iget-boolean v1, v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mChanged:Z

    iput-boolean v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    .line 133
    iget-object v1, v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSnapshot:Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/android/contacts/common/model/dataitem/DataItem;->createFrom(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)Lcom/android/contacts/common/model/dataitem/DataItem;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    iput-object v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    .line 128
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;

    invoke-super {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 122
    .local v0, "state":Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;
    iget-boolean v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    iput-boolean v1, v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mChanged:Z

    .line 123
    iget-object v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSnapshot:Landroid/content/ContentValues;

    .line 124
    return-object v0
.end method

.method public setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 3
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p3, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p4, "readOnly"    # Z
    .param p5, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/TextFieldsEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 70
    iget-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Landroid/content/ContentValues;

    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 71
    invoke-static {v2, v0}, Lcom/android/contacts/common/model/dataitem/DataItem;->createFrom(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)Lcom/android/contacts/common/model/dataitem/DataItem;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    iput-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    .line 73
    invoke-virtual {p2}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    .line 68
    :goto_0
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    goto :goto_0
.end method
