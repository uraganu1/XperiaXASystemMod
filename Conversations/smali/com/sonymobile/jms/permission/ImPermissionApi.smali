.class public interface abstract Lcom/sonymobile/jms/permission/ImPermissionApi;
.super Ljava/lang/Object;
.source "ImPermissionApi.java"


# virtual methods
.method public abstract isAbleToUseGroupFallbackTechnology(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z
.end method

.method public abstract isAbleToUseOne2OneFallbackTechnology(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z
.end method

.method public abstract isAllowedToLeaveGroupConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z
.end method

.method public abstract isAllowedToSendGroupFileMessageTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z
.end method

.method public abstract isAllowedToSendGroupFileMessageTo(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract isAllowedToSendGroupTextMessageTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z
.end method

.method public abstract isAllowedToSendGroupTextMessageTo(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract isAllowedToSendInCallOne2OneFileMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z
.end method

.method public abstract isAllowedToSendOne2OneFileMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z
.end method

.method public abstract isAllowedToSendOne2OneTextMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z
.end method

.method public abstract isAllowedToStartGroupConversation()Z
.end method

.method public abstract registerImContactPermissionChangeListener(Lcom/sonymobile/jms/permission/ImContactPermissionChangeListener;)V
.end method

.method public abstract tryToRequestUpdatedImPermissions(Lcom/sonymobile/jms/contact/ImContactNumber;)V
.end method

.method public abstract unregisterImContactPermissionChangeListener(Lcom/sonymobile/jms/permission/ImContactPermissionChangeListener;)V
.end method
