.class public Lcom/sonymobile/settings/backup/BackupCardPreference;
.super Landroid/preference/Preference;
.source "BackupCardPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;
    }
.end annotation


# instance fields
.field private mBackupInfo:Lcom/sonymobile/settings/backup/BackupInfo;

.field private mContentText1:Landroid/widget/TextView;

.field private mContentText2:Landroid/widget/TextView;

.field private mContentTypes:Landroid/view/ViewGroup;

.field private mDismissButton:Landroid/widget/Button;

.field private mEditButton:Landroid/widget/Button;

.field private mListener:Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;

.field private mShowWelcome:Z

.field private mSubTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/settings/backup/BackupCardPreference;)Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mListener:Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0}, Lcom/sonymobile/settings/backup/BackupCardPreference;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0}, Lcom/sonymobile/settings/backup/BackupCardPreference;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0}, Lcom/sonymobile/settings/backup/BackupCardPreference;->init()V

    .line 43
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 162
    const v0, 0x7f0400fd

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/backup/BackupCardPreference;->setLayoutResource(I)V

    .line 161
    return-void
.end method

.method private setContentTypes(Ljava/lang/String;)V
    .locals 8
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 100
    const-string/jumbo v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    iget-object v5, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentTypes:Landroid/view/ViewGroup;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 99
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentTypes:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 104
    .local v2, "nbrChilds":I
    const-string/jumbo v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "content":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 107
    :try_start_0
    aget-object v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 108
    .local v4, "value":I
    if-ge v4, v2, :cond_1

    .line 109
    iget-object v5, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentTypes:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v4    # "value":I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 115
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentTypes:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 111
    :catch_0
    move-exception v3

    .local v3, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_2
.end method

.method private updateCard()V
    .locals 6

    .prologue
    const v5, 0x7f0b0cb9

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 120
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText2:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    const-string/jumbo v2, ""

    invoke-direct {p0, v2}, Lcom/sonymobile/settings/backup/BackupCardPreference;->setContentTypes(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 123
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mBackupInfo:Lcom/sonymobile/settings/backup/BackupInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mBackupInfo:Lcom/sonymobile/settings/backup/BackupInfo;

    invoke-virtual {v2}, Lcom/sonymobile/settings/backup/BackupInfo;->hasRelevantErrors()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mTitle:Landroid/widget/TextView;

    const v3, 0x7f0b0cb8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mBackupInfo:Lcom/sonymobile/settings/backup/BackupInfo;

    invoke-virtual {v2}, Lcom/sonymobile/settings/backup/BackupInfo;->getLastUnsuccessfulBackupReason()I

    move-result v1

    .line 128
    .local v1, "reason":I
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mBackupInfo:Lcom/sonymobile/settings/backup/BackupInfo;

    invoke-virtual {v2}, Lcom/sonymobile/settings/backup/BackupInfo;->getLastUnsuccessfulBackupLocation()I

    move-result v0

    .line 129
    .local v0, "location":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 130
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mSubTitle:Landroid/widget/TextView;

    const v3, 0x7f0b0cbb

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText1:Landroid/widget/TextView;

    const v3, 0x7f0b0cc1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText1:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    .end local v0    # "location":I
    .end local v1    # "reason":I
    :cond_0
    :goto_0
    return-void

    .line 136
    .restart local v0    # "location":I
    .restart local v1    # "reason":I
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 137
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 138
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText1:Landroid/widget/TextView;

    const v3, 0x7f0b0cbd

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText1:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText2:Landroid/widget/TextView;

    const v3, 0x7f0b0cbe

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 142
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mBackupInfo:Lcom/sonymobile/settings/backup/BackupInfo;

    invoke-virtual {v2}, Lcom/sonymobile/settings/backup/BackupInfo;->getContentTypeIds()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/settings/backup/BackupCardPreference;->setContentTypes(Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 145
    :cond_2
    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText1:Landroid/widget/TextView;

    const v3, 0x7f0b0cbf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 149
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText1:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mBackupInfo:Lcom/sonymobile/settings/backup/BackupInfo;

    invoke-virtual {v2}, Lcom/sonymobile/settings/backup/BackupInfo;->getContentTypeIds()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/settings/backup/BackupCardPreference;->setContentTypes(Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 153
    .end local v0    # "location":I
    .end local v1    # "reason":I
    :cond_3
    iget-boolean v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mShowWelcome:Z

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText1:Landroid/widget/TextView;

    const v3, 0x7f0b0cbc

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 156
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText1:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v2, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 73
    const v0, 0x7f1301da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mTitle:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f1301db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mSubTitle:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f1301dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText1:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f1301e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText2:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f1301dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentTypes:Landroid/view/ViewGroup;

    .line 78
    const v0, 0x7f1301ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mDismissButton:Landroid/widget/Button;

    .line 79
    const v0, 0x7f1301eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mEditButton:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mDismissButton:Landroid/widget/Button;

    new-instance v1, Lcom/sonymobile/settings/backup/BackupCardPreference$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/settings/backup/BackupCardPreference$1;-><init>(Lcom/sonymobile/settings/backup/BackupCardPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mEditButton:Landroid/widget/Button;

    new-instance v1, Lcom/sonymobile/settings/backup/BackupCardPreference$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/settings/backup/BackupCardPreference$2;-><init>(Lcom/sonymobile/settings/backup/BackupCardPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-direct {p0}, Lcom/sonymobile/settings/backup/BackupCardPreference;->updateCard()V

    .line 70
    return-void
.end method

.method public setListener(Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mListener:Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;

    .line 60
    return-void
.end method

.method public showWelcome()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mShowWelcome:Z

    .line 48
    return-void
.end method

.method public update(Lcom/sonymobile/settings/backup/BackupInfo;)V
    .locals 1
    .param p1, "backupInfo"    # Lcom/sonymobile/settings/backup/BackupInfo;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mBackupInfo:Lcom/sonymobile/settings/backup/BackupInfo;

    .line 54
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/settings/backup/BackupCardPreference;->updateCard()V

    .line 52
    return-void
.end method
