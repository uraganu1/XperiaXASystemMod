.class Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LabeledEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/LabeledEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/common/model/account/AccountType$EditType;",
        ">;"
    }
.end annotation


# instance fields
.field private mHasCustomSelection:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/contacts/editor/LabeledEditorView;


# direct methods
.method public constructor <init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/content/Context;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/contacts/editor/LabeledEditorView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    .line 531
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 532
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 534
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->-get5(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->-get5(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 537
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->-get0(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->-get5(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "customText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 539
    sget-object v1, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->add(Ljava/lang/Object;)V

    .line 540
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mHasCustomSelection:Z

    .line 544
    .end local v0    # "customText":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->-get4(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v1

    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->-get2(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v2

    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->-get5(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/contacts/common/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->addAll(Ljava/util/Collection;)V

    .line 530
    return-void
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "resource"    # I

    .prologue
    .line 567
    if-nez p2, :cond_0

    .line 568
    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, p4, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 573
    .local v1, "textView":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 575
    .local v2, "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    sget-object v3, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/common/model/account/AccountType$EditType;

    if-ne v2, v3, :cond_1

    .line 576
    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v3}, Lcom/android/contacts/editor/LabeledEditorView;->-get0(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->-get5(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v4

    iget-object v4, v4, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "text":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    return-object v1

    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "textView":Landroid/widget/TextView;
    .end local v2    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_0
    move-object v1, p2

    .line 570
    check-cast v1, Landroid/widget/TextView;

    .restart local v1    # "textView":Landroid/widget/TextView;
    goto :goto_0

    .line 578
    .restart local v2    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->labelRes:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 560
    const v0, 0x1090009

    .line 559
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 554
    const v0, 0x7f0400d6

    .line 553
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasCustomSelection()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mHasCustomSelection:Z

    return v0
.end method
