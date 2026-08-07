.class public final Lcom/google/android/gms/internal/measurement/M6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR2/Q;


# static fields
.field public static final c:Lcom/google/android/gms/internal/measurement/M6;


# instance fields
.field public final b:LR2/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/M6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/M6;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/M6;->c:Lcom/google/android/gms/internal/measurement/M6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/O6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/O6;-><init>()V

    invoke-static {v0}, LR2/S;->d(Ljava/lang/Object;)LR2/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/M6;->b:LR2/Q;

    return-void
.end method

.method public static a()J
    .locals 2
    .annotation runtime Lfi/c;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/M6;->c:Lcom/google/android/gms/internal/measurement/M6;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/M6;->b()Lcom/google/android/gms/internal/measurement/N6;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/N6;->zza()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/measurement/N6;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/M6;->b:LR2/Q;

    invoke-interface {v0}, LR2/Q;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/N6;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/M6;->b()Lcom/google/android/gms/internal/measurement/N6;

    move-result-object v0

    return-object v0
.end method
