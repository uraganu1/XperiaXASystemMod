.class public Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;
.super Landroid/app/DialogFragment;
.source "ConferenceCallInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog$1;,
        Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog$2;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->TAG:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 68
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog$1;-><init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->mChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 78
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog$2;-><init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->mClickListener:Landroid/view/View$OnClickListener;

    .line 32
    return-void
.end method

.method private initializeView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    const v4, 0x7f0e008f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 58
    .local v1, "checkBox":Landroid/widget/CheckBox;
    const v4, 0x7f0e0090

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, "continueButton":Landroid/view/View;
    const v4, 0x7f0e0091

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 60
    .local v3, "gotoButton":Landroid/view/View;
    const v4, 0x7f0e0092

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "cancelButton":Landroid/view/View;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->mChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 63
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;-><init>()V

    .line 38
    .local v0, "instance":Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->setCancelable(Z)V

    .line 39
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 46
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040029

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 47
    .local v2, "view":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->initializeView(Landroid/view/View;)V

    .line 49
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0903ae

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 51
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
