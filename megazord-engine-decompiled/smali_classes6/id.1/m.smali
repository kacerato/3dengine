.class public final synthetic Lid/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lid/n;

.field public final synthetic c:Lid/p;

.field public final synthetic d:Lid/o;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lid/n;Lid/p;Lid/o;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid/m;->b:Lid/n;

    iput-object p2, p0, Lid/m;->c:Lid/p;

    iput-object p3, p0, Lid/m;->d:Lid/o;

    iput p4, p0, Lid/m;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lid/m;->b:Lid/n;

    iget-object v1, p0, Lid/m;->c:Lid/p;

    iget-object v2, p0, Lid/m;->d:Lid/o;

    iget v3, p0, Lid/m;->e:I

    invoke-static {v0, v1, v2, v3}, Lid/n;->i(Lid/n;Lid/p;Lid/o;I)V

    return-void
.end method
