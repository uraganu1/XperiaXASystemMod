.class public interface abstract Lcom/android/incallui/CallCardPresenter$CallCardUi;
.super Ljava/lang/Object;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallCardUi"
.end annotation


# virtual methods
.method public abstract isManageConferenceVisible()Z
.end method

.method public abstract sendAccessibilityAnnouncement()V
.end method

.method public abstract setCallCardVisible(Z)V
.end method

.method public abstract setCallState(IIILandroid/telecom/DisconnectCause;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZ)V
.end method

.method public abstract setCallbackNumber(Ljava/lang/String;Z)V
.end method

.method public abstract setEndCallButtonClickable(Z)V
.end method

.method public abstract setEndCallButtonEnabled(ZZ)V
.end method

.method public abstract setFullScreenMode(Z)V
.end method

.method public abstract setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLandroid/net/Uri;)V
.end method

.method public abstract setPrimaryCallElapsedTime(ZJ)V
.end method

.method public abstract setPrimaryCallSubIndicator(I)V
.end method

.method public abstract setPrimaryCallSubIndicatorVisibility(I)V
.end method

.method public abstract setPrimaryImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setProgressSpinnerVisible(Z)V
.end method

.method public abstract setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;ZZ)V
.end method

.method public abstract setSecondaryCallSubIndicator(I)V
.end method

.method public abstract setSecondaryCallSubIndicatorVisibility(I)V
.end method

.method public abstract setSecondaryInfoVisible(Z)V
.end method

.method public abstract setWidgetAreaUsed(ZZLandroid/view/ViewGroup;)V
.end method

.method public abstract showHdAudioIndicator(Z)V
.end method

.method public abstract showManageConferenceCallButton(Z)V
.end method

.method public abstract showVolteIcon(Z)V
.end method
