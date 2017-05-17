.class public Lcom/android/contacts/common/list/ContactListFilterView;
.super Landroid/widget/LinearLayout;
.source "ContactListFilterView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRadioButton:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/contacts/common/list/ContactListFilterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactListFilterView;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method


# virtual methods
.method public setActivated(Z)V
    .locals 2
    .param p1, "activated"    # Z

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 75
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-object v0, Lcom/android/contacts/common/list/ContactListFilterView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "radio-button cannot be activated because it is null"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
