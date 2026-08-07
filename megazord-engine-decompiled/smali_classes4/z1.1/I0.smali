.class public final synthetic Lz1/I0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LP2/c$b;

.field public final synthetic c:Lcom/google/android/gms/internal/consent_sdk/zzj;


# direct methods
.method public synthetic constructor <init>(LP2/c$b;Lcom/google/android/gms/internal/consent_sdk/zzj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/I0;->b:LP2/c$b;

    iput-object p2, p0, Lz1/I0;->c:Lcom/google/android/gms/internal/consent_sdk/zzj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lz1/I0;->b:LP2/c$b;

    iget-object v1, p0, Lz1/I0;->c:Lcom/google/android/gms/internal/consent_sdk/zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzj;->zza()LP2/e;

    move-result-object v1

    invoke-interface {v0, v1}, LP2/c$b;->a(LP2/e;)V

    return-void
.end method
