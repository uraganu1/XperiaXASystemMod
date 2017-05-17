.class Lcom/android/incallui/SomcSmallCallCardFragment$CallStateLabel;
.super Ljava/lang/Object;
.source "SomcSmallCallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SomcSmallCallCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallStateLabel"
.end annotation


# instance fields
.field private mCallStateLabel:Ljava/lang/CharSequence;

.field private mIsAutoDismissing:Z


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "callStateLabel"    # Ljava/lang/CharSequence;
    .param p2, "isAutoDismissing"    # Z

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/android/incallui/SomcSmallCallCardFragment$CallStateLabel;->mCallStateLabel:Ljava/lang/CharSequence;

    .line 141
    iput-boolean p2, p0, Lcom/android/incallui/SomcSmallCallCardFragment$CallStateLabel;->mIsAutoDismissing:Z

    .line 139
    return-void
.end method


# virtual methods
.method public getCallStateLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/incallui/SomcSmallCallCardFragment$CallStateLabel;->mCallStateLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isAutoDismissing()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/incallui/SomcSmallCallCardFragment$CallStateLabel;->mIsAutoDismissing:Z

    return v0
.end method
