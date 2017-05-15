.class public Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;
.super Ljava/lang/Object;
.source "BatteryThresholdHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;,
        Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;
    }
.end annotation


# instance fields
.field private mActivationDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDataProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

.field private mUpdateListener:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;)Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mDataProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;)Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mUpdateListener:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;Landroid/widget/SeekBar;)I
    .locals 1
    .param p1, "sb"    # Landroid/widget/SeekBar;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->convertBatteryLevel(Landroid/widget/SeekBar;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;Landroid/widget/TextView;Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "sb"    # Landroid/widget/SeekBar;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->updateTextViewWithProgress(Landroid/widget/TextView;Landroid/widget/SeekBar;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataProvider"    # Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;
    .param p3, "listner"    # Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;
    .param p4, "state"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mDataProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    .line 52
    iput-object p3, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mUpdateListener:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;

    .line 56
    if-eqz p4, :cond_0

    const-string/jumbo v0, "key_dialog_state"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string/jumbo v0, "key_dialog_state"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->show(Landroid/os/Bundle;)V

    .line 49
    :cond_0
    return-void
.end method

.method private convertBatteryLevel(Landroid/widget/SeekBar;)I
    .locals 2
    .param p1, "sb"    # Landroid/widget/SeekBar;

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "batteryLevel":I
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v0, v1, 0x5

    .line 134
    return v0
.end method

.method private updateTextViewWithProgress(Landroid/widget/TextView;Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "sb"    # Landroid/widget/SeekBar;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 128
    invoke-direct {p0, p2}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->convertBatteryLevel(Landroid/widget/SeekBar;)I

    move-result v2

    const/16 v3, 0x5f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 127
    const v2, 0x7f0b0bbd

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method


# virtual methods
.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 140
    iput-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;

    .line 137
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 147
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "key_dialog_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 144
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public show(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 63
    iget-object v8, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 64
    .local v2, "li":Landroid/view/LayoutInflater;
    const v8, 0x7f040103

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 65
    .local v1, "contentView":Landroid/view/View;
    const v8, 0x7f130200

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 66
    .local v7, "tv":Landroid/widget/TextView;
    const v8, 0x7f130201

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    .line 69
    .local v5, "sb":Landroid/widget/SeekBar;
    iget-object v8, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mDataProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    invoke-interface {v8}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;->getValue()I

    move-result v8

    div-int/lit8 v8, v8, 0x5

    add-int/lit8 v6, v8, -0x3

    .line 70
    .local v6, "threshold":I
    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 71
    invoke-direct {p0, v7, v5}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->updateTextViewWithProgress(Landroid/widget/TextView;Landroid/widget/SeekBar;)V

    .line 73
    new-instance v8, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$1;

    invoke-direct {v8, p0, v7}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$1;-><init>(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;Landroid/widget/TextView;)V

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 89
    new-instance v3, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$2;

    invoke-direct {v3, p0, v5}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$2;-><init>(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;Landroid/widget/SeekBar;)V

    .line 105
    .local v3, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$3;

    invoke-direct {v4, p0}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$3;-><init>(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;)V

    .line 113
    .local v4, "onDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0b0c50

    .line 114
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 116
    const v9, 0x104000a

    .line 114
    invoke-virtual {v8, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 117
    const/high16 v9, 0x1040000

    .line 114
    invoke-virtual {v8, v9, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;

    .line 119
    iget-object v8, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 120
    if-eqz p1, :cond_0

    .line 121
    iget-object v8, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 123
    :cond_0
    iget-object v8, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 62
    return-void
.end method
