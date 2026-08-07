.class public final synthetic Ly0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/a$a;


# instance fields
.field public final synthetic a:Ly0/s;

.field public final synthetic b:Lp0/r;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ly0/s;Lp0/r;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/j;->a:Ly0/s;

    iput-object p2, p0, Ly0/j;->b:Lp0/r;

    iput p3, p0, Ly0/j;->c:I

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ly0/j;->a:Ly0/s;

    iget-object v1, p0, Ly0/j;->b:Lp0/r;

    iget v2, p0, Ly0/j;->c:I

    invoke-static {v0, v1, v2}, Ly0/s;->f(Ly0/s;Lp0/r;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
