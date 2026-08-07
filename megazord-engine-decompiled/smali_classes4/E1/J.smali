.class public final synthetic LE1/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# static fields
.field public static final a:LU0/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE1/J;

    invoke-direct {v0}, LE1/J;-><init>()V

    sput-object v0, LE1/J;->a:LU0/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LB1/A;

    check-cast p2, LQ1/l;

    invoke-virtual {p1}, LB1/A;->w0()Lcom/google/android/gms/location/LocationAvailability;

    move-result-object p1

    invoke-virtual {p2, p1}, LQ1/l;->c(Ljava/lang/Object;)V

    return-void
.end method
