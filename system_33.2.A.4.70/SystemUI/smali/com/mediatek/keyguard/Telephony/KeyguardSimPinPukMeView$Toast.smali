.class public Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;
.super Ljava/lang/Object;
.source "KeyguardSimPinPukMeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Toast"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field private mService:Landroid/app/INotificationManager;

.field final mTN:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;

.field mView:Landroid/view/View;

.field mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mHandler:Landroid/os/Handler;

    .line 1131
    const/16 v0, 0x51

    iput v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mGravity:I

    .line 1136
    iput-object p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mContext:Landroid/content/Context;

    .line 1137
    new-instance v0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;-><init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mTN:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;

    .line 1138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1139
    const v1, 0x1050016

    .line 1138
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mY:I

    .line 1135
    return-void
.end method

.method private getService()Landroid/app/INotificationManager;
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mService:Landroid/app/INotificationManager;

    return-object v0

    .line 1189
    :cond_0
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1188
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mService:Landroid/app/INotificationManager;

    .line 1190
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mService:Landroid/app/INotificationManager;

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1143
    new-instance v1, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;

    invoke-direct {v1, p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;-><init>(Landroid/content/Context;)V

    .line 1146
    .local v1, "result":Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;
    const-string/jumbo v4, "layout_inflater"

    .line 1145
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1147
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v4, 0x10900fd

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1148
    .local v3, "v":Landroid/view/View;
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1149
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    iput-object v3, v1, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mView:Landroid/view/View;

    .line 1153
    return-object v1
.end method


# virtual methods
.method public show()V
    .locals 6

    .prologue
    .line 1160
    iget-object v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 1161
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "setView must have been called"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1163
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    .line 1164
    .local v2, "service":Landroid/app/INotificationManager;
    iget-object v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1165
    .local v1, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mTN:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;

    .line 1167
    .local v3, "tn":Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, v1, v3, v4}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    :goto_0
    return-void

    .line 1168
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
